Given(/^as a novice cucumber user$/) do
	puts "You are a novice cucumber user."
end

When(/^I run the test$/) do
	puts "TEST RUNNING>>>>"
end

Then(/^I should see the "([^"]*)" as output$/) do |arg1|
  # pending # Write code here that turns the phrase above into concrete actions
	puts arg1
end
