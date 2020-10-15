require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.sky.com.br/'
end

Capybara.default_max_wait_time = 10
Capybara.ignore_hidden_elements = false