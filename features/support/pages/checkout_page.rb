class CheckoutPage
 include PageObject
 include DataMagic
 require_relative 'error_panel'
 include ErrorPanel

# DataMagic.load('default.yml')
#  DEFAULT_DATA = {
# 'name' => 'cheezy',
#'address' => '123 Main Street',
#  'email' => 'cheezy@example.com',
#  'pay_type' => 'Purchase order'
#  }

#  DEFAULT_DATA = {
#      'name' => Faker:: Name.name,
#      'address' => Faker:: Address.street_address,
#      'email' => Faker:: Internet.email,
#      'pay_type' => 'Credit card'
#  }

  text_field(:name, :id => "order_name")
  text_field(:address, :id => "order_address")
  text_field(:email, :id => "order_email")
  select_list(:pay_type, :id => "order_pay_type")
  button(:place_order, :value => "Place Order")

  def checkout(data = {})
  # populate_page_with DEFAULT_DATA.merge(data)
   populate_page_with data_for(:checkout_page, data)
   place_order
   end
  end
#class CheckoutPage
 # def initialize(browser)
  #  @browser=browser
  #end

  #def name(name)
   # @browser.text_field(:id=> 'order_name').set(name)
  #end

  #def address    (address)
   # @browser.text_field(:id=> 'order_address').set(address)
 # end

  #def email    (email)
   # @browser.text_field(:id=> 'order_email').set(email)
  #end

  #def pay_type                                                   (pay_type)
   # @browser.select_list(:id=> 'order_pay_type').select(pay_type)
  #end

  #def place_order
  #@browser.button(:value=> 'Place Order').click
  #end
#end

#/



