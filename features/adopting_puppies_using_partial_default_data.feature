Feature: Adopting Puppies using partial data or default data

As a pet lover
I want to adopt puppies using simple steps
So that I can save time in adopting them

  Background:
    Given I am on puppy adoption site

Scenario: Adopting puppies in simple steps using partial default date
  When I click the View Details button for "Brook"
  And I click on Adopt Me button
  And I click Complete the Adoption button
  And I complete the adoption using a Credit card
  Then I should see "Thank you for adopting a puppy!"

Scenario: Adopting puppies in simple steps using all default date
  When I click the View Details button for "Brook"
  And I click on Adopt Me button
  And I click Complete the Adoption button
  And I complete the adoption of a puppy
  Then I should see "Thank you for adopting a puppy!"


