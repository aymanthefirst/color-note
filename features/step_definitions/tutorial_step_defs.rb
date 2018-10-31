Given("I am on the tutorial page") do
  expect(tutorial.is_first_element_disiplayed?).to be true
end



When("I click through every tutorial element") do
    tutorial.click_skip



    # tutorial.click_totorial_button_start
    # sleep 5
    puts $driver.source

end

Then("I am taken to the congratulations page") do

end
