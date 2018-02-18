Feature: Adopting Two Puppies

          As a pet lover
          I want to adopt tow puppies
          So that I can look after puppy partners

          Scenario: Adopting two puppies
                Given I am on puppy adoption site
                When I click the View Details button for "Brook"
                #And I click on Adopt Me button
                And I click Adopt Another Puppy
                And I click the View Details button for "Hanna"
               # And I click on Adopt Me button
                And I click Complete the Adoption button
                And enter "Cheezy" in name field
                And enter "Cheezy lane" in address field
                And enter "cheezy@foo.com" in email field
                And select "Check" from the pay drop down list
                And I click Place Order button
                Then I should see "Thank you for adopting a puppy!"