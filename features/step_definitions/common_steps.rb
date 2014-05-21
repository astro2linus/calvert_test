When(/^I go back$/) do
  page.evaluate_script('window.history.back()')
end

When(/^I click "(.*?)" link$/) do |text|
	click_on text
end

When(/^I click "(.*?)" link on the menu$/) do |text|
	within "nav#sidr" do
		click_on text
		sleep 2
	end
end

Then(/^I take screenshot "(.*?)"$/) do |name|
  take_screenshot(name)
end