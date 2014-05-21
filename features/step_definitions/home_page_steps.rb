Given(/^I am on home page$/) do
  visit '/'
  home_page.logout_if_necessary
end

Then(/^I reigster an account$/) do
  home_page.register
end