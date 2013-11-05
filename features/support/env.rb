require 'capybara'
# require 'capybara-webkit'
require 'capybara/cucumber'

#Capybara.app_host = "http://localhost:4000"

# Capybara.javascript_driver = :webkit
Capybara.default_driver = :selenium

World(Capybara)
