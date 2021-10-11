require 'capybara/rails'

Capybara.configure do |config|
  config.server = :puma, { Silent: true }
  config.asset_host = 'http://localhost:3000'
  config.enable_aria_label = true
end
