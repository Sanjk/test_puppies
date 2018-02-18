Given /^I am on puppy adoption site$/ do
 # @browser.goto 'http://puppies.herokuapp.com/'
  #@home = HomePage.new(@browser)
  visit_page(HomePage)
end

When /^I click the View Details button for "([^"]*)"$/ do |name|
 # @home.select_puppy_number 1
  #@browser.button(:value=>"View Details",:index=> 0).click
  #@details=DetailsPage.new(@browser)
  on_page(HomePage).select_puppy name
end

And /^I click Adopt Me button$/ do
#@details.add_to_cart
#@cart = ShoppingCartPage.new(@browser)
  on_page(DetailsPage).add_to_cart
end

When /^I click Adopt Another Puppy$/ do
  on_page(ShoppingCartPage).continue_adopting
 # @cart.continue_adopting
  #@browser.button(:value=>'Adopt Another Puppy').click
end

#When /^I click view details button for "([^"]*)"$/ do |name|
  #@home.select_puppy_number 2
  #@browser.button(:value=>"View Details",:index=> 1).click
  #@details=DetailsPage.new(@browser)
#  on_page(HomePage).select_puppy name
#end

And /^I click Complete the Adoption button$/ do
  on_page(ShoppingCartPage).proceed_to_checkout
 # @cart.proceed_to_checkout
  #@checkout = CheckoutPage.new(@browser)
 # @browser.button(:value=>'Complete the Adoption').click
end

And /^enter "([^"]*)" in name field$/ do |name|
  on_page(CheckoutPage).name=name
  #@checkout.name=name
  #@browser.text_field(:id=>'order_name').set(my_name)
end

And /^enter "([^"]*)" in address field$/ do |address|
  on_page(CheckoutPage).address = address
  #@checkout.address=address
  #@browser.text_field(:id=>'order_address').set(my_address)
end

And /^enter "([^"]*)" in email field$/ do |email|
  on_page(CheckoutPage).email=email
  #@checkout.email=email
  #@browser.text_field(:id=>'order_email').set(my_email)
end

And /^select "([^"]*)" from the pay drop down list$/ do |pay_type|
  on_page(CheckoutPage).pay_type = pay_type
  #@checkout.pay_type=pay_type
  #@browser.select_list(:id=>'order_pay_type').select(payment_type)
end

And /^I click Place Order button$/ do
  on_page(CheckoutPage).place_order
  #@checkout.place_order
  #@browser.button(:value=>'Place Order').click
end

#Then(/^I should see "(.*?)"$/) do |text|
#@browser.text.include? text
#end
Then /^I should see "([^"]*)"$/ do |expected|
  @current_page.text.should include expected
  #@browser.text.should include expected
end

