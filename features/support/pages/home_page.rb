#def puppy_adoption_site
 # @browser=Watir::Browser.new :firefox
 # @browser.goto 'http://puppies.herokuapp.com/'
#end

class HomePage
 include PageObject

 PUPPY_LOOKUP = {"Brook"=>0, "Hanna"=>1}

 page_url  "http://puppies.herokuapp.com/"

 def select_puppy(name = "Brook")
   index = puppy_index_for(name)
   button_element(:value => 'View Details', :index => index).click
 end


#button(:first_puppy,:value=>"View Details",:index=>0)
#button(:second_puppy,:value=>"View Details",:index=>1)
   private
   def puppy_index_for(name)
     PUPPY_LOOKUP[name]
   end
end

