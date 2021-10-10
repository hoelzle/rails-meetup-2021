module API
  class Engine < ::Rails::Engine
    isolate_namespace API

    config.generators do |g|
      g.api_only = true
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
    end
  end
end
