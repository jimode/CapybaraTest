Given(/^I am on the BMW Car Insurance home page$/) do
  visit 'http://www.bmw-carinsurance.co.uk/'
end

When(/^I click on the "(.*?)" link$/) do |arg1|
  click_link 'Get a Quote'
end

Then(/^I should be taken to another window displaying "(.*?)"$/) do |arg1|
  switch_window
  page.has_css?('a.nav1')
end