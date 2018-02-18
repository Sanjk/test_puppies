Feature: Adopting Puppies

  As a pet lover
  I want to adopt puppies
  So that I can look after them

#Background:
  #Given I am on puppy adoption site
 # Then I should see "Thank you for adopting a puppy!"

Scenario Outline: Adopting one puppy
  Given I am on puppy adoption site
  When I click the View Details button for "brook"
  #And I click on Adopt Me button
  And I click Complete the Adoption button
  And enter "<name>" in name field
  And enter "<address>" in address field
  And enter "<email>" in email field
  And select "<pay_type>" from the pay drop down list
  And I click Place Order button
  Then I should see "Thank you for adopting a puppy!"
Examples:
    | name       |  address         | email           | pay_type        |
    | Cheezy     |  Cheezy Lane     | cheezy@foo.com  | Check           |
    | Jon        |  Jon Lane        | jon@foo.com     | Credit card     |
    | Mickey     |  Mickey Lane     | mickey@foo.com  | Purchase order  |