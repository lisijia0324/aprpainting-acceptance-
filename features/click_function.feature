Feature: Test click function of different buttons and links on APRpainting 
	As a potential customer of APRpainting
	I want to use all the service of APRpainting 
	So that I am able to different buttons and links on the web application
	
Scenario: Click navigation button
	Given I am on homepage of APRpainting
	When I click Contact button on navigation bar
	Then I should have a screenshot of Contact page
	
Scenario: Click prev/next arrow
	Given I am on homepage of APRpainting
	When I click prev arrow button on current Infor
	Then I will have a screenshot of Other Info