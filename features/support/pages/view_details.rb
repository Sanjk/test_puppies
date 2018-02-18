#def adopt_puppy_num (num)
 # @browser.button(:value=>"View Details",:index=> num - 1).click
  #@browser.button(:value=>"Adopt Me!").click
#end
class DetailsPage

  include PageObject

  button(:add_to_cart,:value=>"Adopt Me!")
end