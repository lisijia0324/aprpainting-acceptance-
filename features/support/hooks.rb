After do |scenario|
  #print out the failure message and take screenshot after failed scenario
  if scenario.failed?
    fail_message = "#{scenario.expection.message}"
    puts fail_message
    page.save_screenshot("out/failure_at_#{scenario.title}.png")
  end
  
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Driver::Selenium.new(app, :browser => :firefox)
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Driver::Selenium.new(app, :browser => :chrome)
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before('@chrome') do
  Capybara.current_driver = :selenium_chrome
  puts Capybara.current_driver.title
end