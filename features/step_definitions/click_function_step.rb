
@chrome
When /^I click (.*) arrow button on current Infor$/ do |direction|
  page.save_screenshot('out/current_info.png')
  find("div.jcarousel-#{direction}.jcarousel-#{direction}-horizontal").click
  sleep 5
end

Then /^I will have a screenshot of Other Info$/ do
  page.save_screenshot('out/other_info.png')
end
