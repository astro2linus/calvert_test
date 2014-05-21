@menu_links
Feature: Menu Links
	Scenario: Menu links should be working
		Given I am on home page
		And I click "Menu" link
		When I click "Register" link on the menu
		Then I should see the text "Register an Account"
		And I go back
		And I click "Menu" link
		When I click "Log In" link on the menu
		Then I should see the text "Need an Account? Register"
		And I go back
		And I click "Menu" link
		When I click "About Us" link on the menu
		Then "About" link should be highlighted on the left side
		And I go back
		And I click "Menu" link
		# And I click "Our Blog" link on the menu
		# Then I should see the text "Empowering investors to empower communities"
		# And I go back
		#And I click "Menu" link
		And I click "Contact Us" link on the menu
		Then "Contact Us" link should be highlighted on the left side
		And I go back
		And I click "Menu" link
		And I click "Terms of Service" link on the menu
		Then "Terms of Service" link should be highlighted on the left side
		And I go back
		And I click "Menu" link
		And I click "Privacy Policy" link on the menu
		Then "Terms of Service" link should be highlighted on the left side
