require 'capybara'
include Capybara::DSL
Capybara.app_host = 'http://localhost:3000'

Capybara.current_driver = :selenium

Capybara.register_driver :selenium_with_long_timeout do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = 120
  Capybara::Driver::Selenium.new(app, :browser => :firefox, :http_client => client)
end

