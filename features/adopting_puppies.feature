Feature: Adopting Puppies

  As a pet lover
  I want to adopt puppies
  So that I can look after them

  Background:
    Given I am on puppy adoption site

  Scenario: Adopting one puppy
  When I click the view details button
  And I click on Adopt Me button
  And I click on Complete Adoption button
  And enter "Cheezy" in name field
  And enter "cheesy lane" in address field
  And enter "cheezy@foo.com" in email field
  And select "Check" from the pay drop down list
  And I click on Place Order button
  Then I should see "Thank you for adopting a puppy!"

Scenario: Name is a required field
  When I checkout leaving the name field blank
  And I complete the form leaving the name field blank
  Then I should see the error message "Name can't be blank"


