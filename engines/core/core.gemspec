require_relative "lib/core/version"

Gem::Specification.new do |spec|
  spec.name        = "core"
  spec.version     = Core::VERSION
  spec.authors     = ["Gregor Wassmann"]
  spec.email       = ["gregor@hoelzle.ch"]
  spec.homepage    = "https://www.hoelzle.ch"
  spec.summary     = "Domain model"
  spec.description = "Core models and business logic"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hoelzle/rails-meetup-2020"
  spec.metadata["changelog_uri"] = "https://github.com/hoelzle/rails-meetup-2020"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.1"
end
