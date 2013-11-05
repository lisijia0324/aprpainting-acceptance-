@javascript
Given /^I am on homepage of APRpainting$/ do 
  visit('http://www.aprpainting.com.au')
end

When /^I click (.*) button on navigation bar$/ do |button|
  find(:xpath, "//ul/li[text()=\"#{button}\"]").click
  sleep 5
end

Then /^I should have a screenshot of (.*) page$/ do |title|
  page.save_screenshot("out/#{title}.png")
end