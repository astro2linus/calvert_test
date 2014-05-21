class HomePage 

	def login(username, password)
		click_on "Log In"
  	fill_in "user_username", with: username
  	fill_in "user_password", with: password
  	within "div.form--actions" do
  		click_on "Log in"
  	end
	end

	def logout_if_necessary
		logout if has_link?("Logout")
	end

	def logout
		click_on "Logout"
	end

	def register
		ts = Time.now.to_i.to_s
		within "header nav" do
			click_on "Register"
		end
		first_name = "Astro_#{ts}"
		last_name = "QA_#{ts}"
		user_name = "u#{ts}"
		email = "linus+#{ts}@intridea.com"
		password = "Linus1234"
		password_confirmation = "Linus1234"

		user.username = user_name
		user.password = password

		fill_in :user_username, with: user_name
  	fill_in :user_first_name, with: first_name
  	fill_in :user_last_name, with: last_name
  	fill_in :user_email, with: email
  	fill_in :user_password, with: password
  	fill_in :user_password_confirmation, with: password_confirmation
  	
  	within "form#new_user" do
  		click_on "Register"
  	end
	end

	def open_initiative(index=0)
		initiatives = all("div.initiatives--card-list h2 a")
		initiatives[index].click
	end
end