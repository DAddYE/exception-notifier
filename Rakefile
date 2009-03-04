require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

PKG_NAME      = 'exception-notifier'
PKG_VERSION   = "1.4.1"
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

desc 'Default: install the gem.'
task :default => [:install]

desc 'Generate documentation for the plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = 'Lipsiadmin Exception Notifier'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc 'Clean up files.'
task :clean do |t|
  FileUtils.rm_rf "doc"
  FileUtils.rm_rf "tmp"
  FileUtils.rm_rf "pkg"
end

spec = Gem::Specification.new do |s| 
  s.name              = PKG_NAME
  s.version           = PKG_VERSION
  s.author            = "Davide D'Agostino"
  s.email             = "d.dagostino@lipsiasoft.com"
  s.homepage          = "http://groups.google.com/group/lipsiadmin"
  s.platform          = Gem::Platform::RUBY
  s.summary           = "Extracted exception notifier of Lipsiadmin"
  s.files             = FileList["README", "MIT-LICENSE", "Rakefile", "init.rb", "{generators,lib,test}/**/*"].to_a
  s.has_rdoc          = true
  s.requirements     << 'none'
  s.require_path      = 'lib'
  s.autorequire       = 'exception_notifier'
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

desc "Install the gem locally"
task :install => [:uninstall, :repackage] do
  sh %{sudo gem install pkg/#{PKG_FILE_NAME}.gem}
end

desc "Unistall the gem from local"
task :uninstall => [:clean] do
  sh %{sudo gem uninstall #{PKG_NAME}}
end
 
desc "Generate a gemspec file for GitHub"
task :gemspec do
  File.open("#{spec.name}.gemspec", 'w') do |f|
    f.write spec.to_ruby
  end
end
