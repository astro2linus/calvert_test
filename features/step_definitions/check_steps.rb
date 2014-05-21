Then(/^I should see the text "(.*?)"$/) do |text|
	should have_text text
end

Then(/^"(.*?)" link should be highlighted on the left side$/) do |text|
	sleep 2
  within "div.nav--about" do
  	expect(find('a.is-active')).to have_text text.upcase
  	take_screenshot("#{text.downcase}")
  end
end