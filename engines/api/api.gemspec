require_relative "lib/api/version"

Gem::Specification.new do |spec|
  spec.name        = "api"
  spec.version     = API::VERSION
  spec.authors     = ["Gregor Wassmann"]
  spec.email       = ["gregor@hoelzle.ch"]
  spec.homepage    = "https://www.hoelzle.ch"
  spec.summary     = "API Engine Demo"
  spec.description = "Provide an API based on Core"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hoelzle/rails-meetup-2021"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.1"
  spec.add_dependency "core"

  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'rspec-rails'
end
