@repeat_investor_purchase_flow
Feature: Repeat investor purchase flow
	Scenario: A repeat investor invests
		Given I am a repeat investor
		And I am on home page
		When I login
		And I open an initiative
		And I invest "500" dollar in the intiative
		And I continue without filling payment info
		And I place the order
		Then I should see the text "Congratulations"
		And I take screenshot "repeat_investor_purchase_flow"
		And I logout