When /^I checkout leaving the name field blank$/ do
 on_page(HomePage).select_puppy
 on_page(DetailsPage).add_to_cart
 on_page(ShoppingCartPage).proceed_to_checkout
 on_page(CheckoutPage).checkout('name' => '')

end

And /^I complete the form leaving the name field blank$/ do

end

Then /^I should see the error message "([^"]*)"$/ do |msg|
  #on_page(CheckoutPage).error_message.should include msg
  #@current_page.error_messages.should include msg
  @current_page.should have_error_message msg
end

