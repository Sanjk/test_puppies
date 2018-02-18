When(/^I click the view details button$/) do
  @browser.button(:value=> "View Details").click
end

And(/^I click on Adopt Me button$/) do
 @browser.button(:value=> "Adopt Me!").click
end

And(/^I click on Complete Adoption button$/) do
@browser.button(:value=> "Complete the Adoption").click
end

And(/^enter name in name field$/) do |name|
@browser.text_filed(:id=> "order_name").set(name)
end

And(/^enter address in address field$/) do            |address|
@browser.text_field(:id=> "order_address").set(address)
end

And(/^enter email in email field$/) do |email|
@browser.text_field(:id=> "order_email").set(email)
end

And(/^I select payment_type from drop down list$/) do |payment_type|
@browser.select_list(:id=> "order_pay_type").select(payment_type)
end
And /^I click on Place Order button$/ do
@browser.button(:value=> "Place Order").click
end
