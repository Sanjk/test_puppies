Given(/^I have a pending adoption for "([^"]*)"$/) do |name|
  on_page(HomePage).select_puppy
  on_page(DetailsPage).add_to_cart
  on_page(ShoppingCartPage).proceed_to_checkout
  on_page(CheckoutPage).checkout('name'=>name)
end

When(/^I process the adoption$/) do
  visit_page(LandingPage)
  on_page(LoginPage).login_to_system
  on_page(LandingPage).adoptions
  on_page(ProcessPuppyPage).process_first_puppy
end
Given(/^I am on puppy admin site$/) do
  visit_page(LoginPage)
end
When(/^I login using username and password$/) do
  on_page(LoginPage).login_to_system
end
Then(/^I should see "([^"]*)" on landing page$/) do |msg|
  @current_page.text.should include msg
end