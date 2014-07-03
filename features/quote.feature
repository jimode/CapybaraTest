Feature: Initiate Quote

Scenario: Get a BMW Car Insurance quote
	Given I am on the BMW Car Insurance home page
	When I click on the "Get a Quote" link
	Then I should be taken to another window displaying "Step 1- Your car"
	