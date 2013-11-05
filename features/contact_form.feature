Feature: Test contact form function for APRpainting
	As a potential customer of APRpainting
	I want to access to contact form of APRpainting and fill in details
	So that I am able to contact with APRpainting with messages
	
Scenario: Fill in contact form and send message to APRpainting
	Given I am on the homepage of APRpainting
	When I click on Contact Button
	Then I will see contact form
	Then I fill in "Name" with "Jhon Do"
	And I fill in "Phone" with "0423144346"
	And I fill in "Email" with "Jd@gmail.com"
	And I fill in "Message" with "call me pleas"
	And I click Clear Form button on the contact form
	