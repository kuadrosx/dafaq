$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dafaq/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dafaq"
  s.version     = Dafaq::VERSION
  s.authors     = ["Jorge H. Cuadrado"]
  s.email       = ["kuadrosxx@gmail.com"]
  s.summary     = "FAQ engine"
  s.description = "FAQ engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency 'devise'

  s.add_dependency "rails", "~>3.2"
  s.add_dependency 'mongoid'
  s.add_dependency "jquery-rails"

end

