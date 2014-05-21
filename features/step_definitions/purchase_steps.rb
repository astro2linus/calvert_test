And(/^I open an initiative$/) do
	@home_page.open_initiative
	@initiative_page = InitiativePage.new
end

And(/^I invest in the intiative$/) do
	@initiative_page.invest
end

When(/^I invest "(.*?)" dollar in the intiative$/) do |amount|
  @initiative_page.invest(amount)
end

And(/^I fill in the payment information$/) do
	@initiative_page.fill_in_payment_info
end

And(/^I continue without filling payment info$/) do
  @initiative_page.continue
end

When(/^I edit payment info$/) do
  @initiative_page.edit_payment_info
end

And(/^I fill in the bank account$/) do
	@initiative_page.fill_in_bank_account_info
end

And(/^I place the order$/) do
	@initiative_page.place_order
end