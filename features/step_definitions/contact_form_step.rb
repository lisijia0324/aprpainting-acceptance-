@javascript
Given /^I am on the homepage of APRpainting$/ do
  visit('http://www.aprpainting.com.au')
end

When /^I click on Contact Button$/ do
  find("ul li[data-slide='10']").click
end

Then /^I will see contact form$/ do
  page.should have_css('div.contact_form')
end

And /^I fill in (.*) with (.*)$/ do |input, value|
  within("#ajax-contact-form") do
    fill_in "name", :with => "John Do" 
    fill_in "subject", :with => "0423144346"
    fill_in "email", :with => "Jd@gmail.com"
    fill_in "message", :with => "call me please"
  end
  page.save_screenshot('fill_in.png')
end

Then /^I click (.*) button on the contact form$/ do |button|
  click_button('Clear Form')
  page.save_screenshot('clear_form.png')
end