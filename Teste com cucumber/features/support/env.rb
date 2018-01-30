require 'capybara/rspec'
require 'site_prism'

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
   # config.app_host = "https://bazar-da-samy.lojaintegrada.com.br/"
end
# require "watir" 
# require "rspec/expectations" 
# require 'capybara/rspec'