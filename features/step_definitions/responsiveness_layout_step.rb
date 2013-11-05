@javascript
Given /^I am homepage of google$/ do
  visit ('http://www.google.com.au')
end

When /^I search APR painting$/ do
  fill_in "gbqfq", :with => "APR painting"
  find(:css, "button#gbqfb").click
end

Then /^I should see the link of APR painting$/ do
  page.should have_content('APR painting')
end

And /^I click the link of APR painting$/ do
  click_link('APR Painting')
end

Then /^I should have one screenshot of fixed browser size$/ do
  visit('http://www.aprpainting.com.au/')
  page.save_screenshot('out/aprpainting.png')
end

Then /^I should have one screenshot of apple device (.*) size$/ do |series|
 # page.driver.browser.manage.window.resize_to(width, height)
# page.save_screenshot('screenshot.png')

  if Capybara.current_driver == :selenium
  window = Capybara.current_session.driver.browser.manage.window

    case "#{series}"
    when "iPhone3s" || "iPhone4s"
      window.resize_to(320, 480)
    when "iPhone5s"
      window.resize_to(320, 568)
    when "iPad"
      window.resize_to(1036, 1024)
    when "iPadMini"
      window.resize_to(768, 1024)
    else
      puts "not required device"
    end
  
    page.save_screenshot("out/#{series}.png")
  else
    page.save_screenshot("out/current_driver.png") 
  end
end


