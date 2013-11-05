Feature: Test responsiveness layout for APRpainting
	As a potential customer of APRpainting
	I want to access APRpainting application in multiple devices
	So that I am able to see flexible size of the web application
	
Scenario: Open APRpainting on any browser on computer
	Given I am homepage of google
	When I search APR painting
	Then I should see the link of APR painting
	And I click the link of APR painting
	Then I should have one screenshot of fixed browser size
	
Scenario: Open APRpainting on iPhone device
	Given I am homepage of google
	When I search APR painting
	Then I should see the link of APR painting
	And I click the link of APR painting
	Then I should have one screenshot of apple device iPadMini size