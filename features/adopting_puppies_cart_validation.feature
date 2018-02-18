Feature: Validating puppies cart
  As I am very specific about my puppy
  I want to validate puppies cart for name and price
  So that I get what I want

Background:
  Given I am on puppy adoption site
  When I click the View Details button for "Brook"
  And I click Adopt Me button

  Scenario: Validate cart with one puppy
  Then I should see "Brook" as the name for line item 1
  And I should see "$34.95" as the subtotal for line item 1
  And I should see "$34.95" as cart total

Scenario: Validate cart for two puppies
  And I click Adopt Another Puppy
  And I click the View Details button for "Hanna"
  And I click Adopt Me button
  Then I should see "Brook" as the name for line item 1
  And I should see "$34.95" as the subtotal for line item 1
  And I should see "Hanna" as the name for line item 2
  And I should see "$22.99" as the subtotal for line item 2
  And I should see "$57.94" as cart total
