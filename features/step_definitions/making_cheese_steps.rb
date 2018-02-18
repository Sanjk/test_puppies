Given(/^I have no cheese$/) do
  puts "I have no cheese!!!"
end

When(/^I press the make cheese button$/) do
  puts "I hope the machine works"
end

Then(/^I should have (\d+) piece of cheese$/) do |num_pieces|
  puts "Great news!!! I have #{num_pieces} pieces of cheese"
end
