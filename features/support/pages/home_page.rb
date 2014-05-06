class HomePage 

	def login(username, password)
		click_on "Log In"
  	fill_in "user_username", with: username
  	fill_in "user_password", with: password
  	click_on "Log in"
	end

	def open_initiative
		initiatives = all("div.initiatives--card-list h2 a")
		initiatives.first.click
	end
end