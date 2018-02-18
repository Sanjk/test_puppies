When /^I complete the adoption using a Credit card$/ do
on_page(CheckoutPage).checkout('pay_type'=> 'Check')
end

When /^I complete the adoption of a puppy$/ do
  on_page(HomePage).select_puppy
  on_page(DetailsPage).add_to_cart
  on_page(ShoppingCartPage).proceed_to_checkout
  on_page(CheckoutPage).checkout
end