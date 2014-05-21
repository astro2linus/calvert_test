@first_time_investor_purchase_flow
Feature: First-time investor purchase flow
	Scenario: A first time investor registers an account and invests
		Given I am a first time investor
		And I am on home page
		When I reigster an account
		And I confirm the registration
		And I login
		And I open an initiative
		And I invest "1000" dollar in the intiative
		And I fill in the payment information
		And I fill in the bank account
		And I place the order
		Then I should see the text "Congratulations"
		And I logout