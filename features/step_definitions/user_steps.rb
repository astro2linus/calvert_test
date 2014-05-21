Given(/^I am a repeat investor$/) do
  $user = TestUser.new :username => "linus01", :password => "Linus2345"
end

Given(/^I am a first time investor$/) do
	$user = TestUser.new
end

When(/^I login$/) do
	visit '/'
	@home_page = HomePage.new
	puts "user-pwd: #{user.username} #{user.password}"
  @home_page.login(user.username, user.password)
end

And(/^I logout$/) do
  @home_page.logout
end