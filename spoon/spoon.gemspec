$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spoon/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spoon"
  s.version     = Spoon::VERSION
  s.authors     = ["thomasmckay"]
  s.email       = ["thomasmckay@redhat.com"]
  s.homepage    = "http://www.katello.org/"
  s.summary     = "Katello Engine Example - Spoon."
  s.description = "There is no spoon."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
