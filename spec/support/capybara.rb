require 'capybara/rspec'
require 'capybara/rails'

Capybara.configure do |config|
	  config.default_max_wait_time = 5 # seconds
  config.default_driver        = :selenium_chrome_headless
end

Capybara::Screenshot.register_driver(:selenium_chrome_headless) do |driver, path|
	  driver.browser.save_screenshot(path)
end

RSpec.configure do |config|
	  config.before(:each, type: :system) do
	driven_by :selenium_chrome_headless
  end
end

