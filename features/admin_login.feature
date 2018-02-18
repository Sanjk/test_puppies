@wip
Feature: Admin login

  As A user
  I want to login to puppy site as administrator so that I can verify the adopters name

  Background:
    Given I am on puppy admin site
    When I login using username and password

  Scenario: Login
    Then I should see "Welcome" on landing page

  Scenario: Verify Adopters name
    And I click on Adoptions link
    Then I should see Adopter Very Cheezy on first row

  Scenario: Verify thank you message when adoption is processed
    And click on Adoptions link
    And I click on Process Puppy link
    Then I should see message "Please thank Very Cheezy for the order!"

  Scenario: process pending adoption
    Given I have a pending adoption for "Cheezy"
    When I process the adoption
    Then I should see "Please thank Cheezy for the order!"