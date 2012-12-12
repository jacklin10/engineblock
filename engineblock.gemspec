require File.expand_path("../lib/engineblock/version", __FILE__)

Gem::Specification.new do |s|
  s.name                      = "engineblock"
  s.version                   = Engineblock::VERSION
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = [ "jacklin10" ]
  s.email                     = [ "jacklin10@gmail.com" ]
  s.description               = "Rails 3.0.XX based engine template"
  s.summary                   = "engineblock-#{s.version}"

  s.required_rubygems_version = "> 1.3.6"

  s.add_dependency "activesupport" , "~> 3.0.7"
  s.add_dependency "rails"         , "~> 3.0.7"

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'database_cleaner'

  s.test_files = Dir["spec/**/*"]

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
