Feature: Testing navigation bar of APRpainting

Scenario: Protfolio page navigation
	Given I am on homepage of APRpainting
	When I click Portfolio button on navigation bar
	Then I should have a screenshot of Portfiolo page