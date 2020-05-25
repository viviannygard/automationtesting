require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "os"


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  #config.app_host = "https://demo.origem.me" 
  config.app_host = "http://demo.automationtesting.in"
end

Capybara.default_max_wait_time = 10