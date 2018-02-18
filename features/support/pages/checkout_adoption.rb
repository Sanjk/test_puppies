def checkout_adoption (name,address,email,pay_type)
  @browser.button(:value=> 'Complete the Adoption').click
  @browser.text_field(:id=> 'order_name').set(name)
  @browser.text_field(:id=> 'order_address').set(address)
  @browser.text_field(:id=> 'order_email').set(email)
  @browser.select_list(:id=> 'order_pay_type').select(pay_type)
  @browser.button(:value=> 'Place Order').click
end
