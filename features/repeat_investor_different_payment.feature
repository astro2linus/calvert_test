@repeat_investor_different_payment
Feature: A repeat investor uses a different bank account
	Scenario: A repeat investor uses a different bank account
		Given I am a repeat investor
		And I am on home page
		When I login
		And I open an initiative
		And I invest "800" dollar in the intiative
		And I edit payment info
		And I place the order
		Then I should see the text "Congratulations"
		And I logout