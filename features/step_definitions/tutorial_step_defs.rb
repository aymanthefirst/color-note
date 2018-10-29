Given("I have just started the application") do
  homepage.is_first_element_disiplayed?
end



When("I click through every tutorial element") do
  homepage.continue_to_main_page
end

Then("I am taken to the congratulations page") do
  
end
