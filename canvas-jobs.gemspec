$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "delayed/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "canvas-jobs"
  s.version     = Delayed::VERSION
  s.authors     = ["Tobias Luetke", "Brian Palmer"]
  s.email       = ["brianp@instructure.com"]
  s.homepage    = "http://www.instructure.com"
  s.summary     = "Instructure-maintained fork of delayed_job"

  s.executables = ['canvas_job']
  s.files = Dir["{app,config,db,lib}/**/*"]
  s.test_files = Dir["spec/**/*"]

  s.required_ruby_version = '>= 2.0'

  s.add_dependency 'after_transaction_commit', '1.0.1'
  s.add_dependency 'rails',           '>= 3.2'
  s.add_dependency 'rufus-scheduler', '~> 3.1.2'
  s.add_dependency 'redis',           '> 3.0'
  s.add_dependency 'redis-scripting', '~> 1.0.1'

  s.add_development_dependency 'bump'
  s.add_development_dependency 'database_cleaner', '1.3.0'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '3.1.0'
  s.add_development_dependency 'test_after_commit', '0.4.1'
  s.add_development_dependency 'timecop', '0.7.1'
  s.add_development_dependency 'wwtd', '~> 1.1.1'
  s.add_development_dependency 'sinatra'
  s.add_development_dependency 'sinatra-contrib'
  s.add_development_dependency 'rack-test'
end
