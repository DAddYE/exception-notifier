# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{exception-notifier}
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Davide D'Agostino"]
  s.autorequire = %q{exception_notifier}
  s.date = %q{2009-03-04}
  s.email = %q{d.dagostino@lipsiasoft.com}
  s.files = ["README", "MIT-LICENSE", "Rakefile", "init.rb", "generators/exception_notifier", "generators/exception_notifier/exception_notifier_generator.rb", "generators/exception_notifier/REMEMBER", "generators/exception_notifier/templates", "generators/exception_notifier/templates/exception_notifier.rb", "generators/exception_notifier/templates/views", "generators/exception_notifier/templates/views/404.html.erb", "generators/exception_notifier/templates/views/404.html.haml", "generators/exception_notifier/templates/views/422.html.erb", "generators/exception_notifier/templates/views/422.html.haml", "generators/exception_notifier/templates/views/500.html.erb", "generators/exception_notifier/templates/views/500.html.haml", "lib/controller", "lib/controller/rescue.rb", "lib/exception_notifier.rb", "lib/mailer", "lib/mailer/exception", "lib/mailer/exception/exception.html.erb", "lib/mailer/exception_notifier.rb", "test/exception_notifier_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://groups.google.com/group/lipsiadmin}
  s.require_paths = ["lib"]
  s.requirements = ["none"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Extracted exception notifier of Lipsiadmin}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
