class ExceptionNotifierGenerator < Rails::Generator::NamedBase
  default_options :haml_templates => false
  
  def initialize(runtime_args, runtime_options = {})
    runtime_args = ["none"].concat(runtime_args) # Skip usage
    super
  end
  
  def manifest
    template = options[:haml_templates] ? "haml" : "erb"
    
    record do |m|
      m.directory File.join('app/views', 'exceptions')
      m.directory File.join('config', 'initializers')
      
      m.template('exception_notifier.rb', 'config/initializers/exception_notifier.rb')
      
      %w(404 422 500).each do |page|
        m.template("views/#{page}.html.#{template}", "app/views/exceptions/#{page}.html.#{template}")
      end
      
      m.readme "../REMEMBER"      
    end
  end
  
  protected
    def banner
      "Usage: #{$0} exception_notifier [--template]"
    end
    
    def add_options!(opt)
      opt.separator ''
      opt.separator 'Options:'
      opt.on("-t", "--haml-templates",
             "Generate exception templates using haml template") { |v| options[:haml_templates] = v; puts v }
    end  
end
