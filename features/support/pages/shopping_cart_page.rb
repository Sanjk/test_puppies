class ShoppingCartPage
  include PageObject

   NAME_COLUMN = 1
   SUBTOTAL_COLUMN = 3
   LINES_PER_PUPPY = 6


 #def initialize (browser)
  # @browser=browser
 #end

 # def name_for_line_item(line_item)
  #  cart_line_item(line_item)[NAME_COLUMN].text
  #end

 # def subtotal_for_line_item(line_item)
 #   cart_line_item(line_item)[SUBTOTAL_COLUMN].text
 # end

 # def cart_total
 # @browser.td(:class=>'total_cell').text
 # end

  #def continue_adopting
  #  @browser.button(:value=> 'Adopt Another Puppy').click
  #end

  # def proceed_to_checkout
  #  @browser.button(:value=> 'Complete the Adoptions').click
  # end

    # end
#   private
#   def row_for(line_item)
#    (line_item - 1) * LINES_PER_PUPPY
# end

#  def cart_line_item (line_item)
#    @browser.table(:index=>0)[row_for(line_item)]
#end

#end

  button(:proceed_to_checkout, :value=> "Complete the Adoption")
  button(:continue_adopting, :value=> "Adopt Another Puppy")
  table(:cart,:index=>0)
  cell(:cart_total,:class=>"total_cell")

  def name_for_line_item(line_item)
      cart_line_item(line_item)[NAME_COLUMN].text
    end

    def subtotal_for_line_item(line_item)
      cart_line_item(line_item)[SUBTOTAL_COLUMN].text
    end

  private
    def row_for(line_item)
     (line_item - 1) * LINES_PER_PUPPY
   end

   def cart_line_item (line_item)
     cart_element[row_for(line_item)]
 end
end
