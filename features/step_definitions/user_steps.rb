Given(/^I am an investor$/) do
  @user = TestUser.new :username => "linus01", :password => "Linus1234"
end

When(/^I login$/) do
	visit '/'
	@home_page = HomePage.new
  @home_page.login(@user.username, @user.password)
end

And(/^I open an initiative$/) do
	@home_page.open_initiative
	@initiative_page = InitiativePage.new
end

And(/^I invest in the intiative$/) do
	@initiative_page.invest
end