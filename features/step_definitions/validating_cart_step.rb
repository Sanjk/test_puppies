#def row_for(line_item)
 # (line_item - 1) *6
#end

#def cart_line_item(line_item)
#  @browser.table(:index=>0)[row_for(line_item)]
#end

Then /^I should see "([^"]*)" as the name for (line item \d+)$/ do |name, line_item|
 #  row=row_for(line_item.to_i)
 #  cart_line_item(line_item.to_i)[1].text.should include name
 #  @cart.name_for_line_item(line_item.to_i).should include name
  on_page(ShoppingCartPage).name_for_line_item(line_item).should include name
end

Then /^I should see "([^"]*)" as the subtotal for (line item \d+)$/ do |subtotal, line_item|
  #cart_line_item(line_item.to_i)[3].text.should == subtotal
  #@cart.subtotal_for_line_item(line_item.to_i).should == subtotal
  on_page(ShoppingCartPage).subtotal_for_line_item(line_item).should == subtotal
end

Then /^I should see "([^"]*)" as cart total$/ do |total|
  #@browser.td(:class => 'total_cell').text.should==total
  #@cart.cart_total.should == total
  on_page(ShoppingCartPage).cart_total.should == total
end