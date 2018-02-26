require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/rspec'
require 'test/unit'

Capybara.register_driver :selenium do |app|
## linha abaixo para rodar normal
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
## linhas abaixo para rodar headless
#     Capybara::Selenium::Driver.new(app,
#     :browser => :chrome,
#     :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
#       'chromeOptions' => {
#         'args' => [ "headless", "window-size=1280x720", "disable-gpu"]
#       }
#     )
#   )
# headless até aqui
end
  
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 5
