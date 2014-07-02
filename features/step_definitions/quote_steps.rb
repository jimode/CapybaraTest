Given(/^I am on the BMW Car Insurance home page$/) do
  visit 'http://www.bmw-carinsurance.co.uk/'
end

When(/^I click on the "(.*?)" link$/) do |arg1|
  click_link 'Get a Quote'
end

Then(/^I should be taken to another window displaying "(.*?)"$/) do |arg1|
  main_window = page.driver.browser.window_handle
  windows = page.driver.browser.window_handles
  windows.each do |window|
  	if main_window != window
  		new_window = window
  	end
  end

  page.has_css?('a.nav1')
  
end