#TEST TO SLEECT DEFAULT SCREEN
When("I click on the settings link") do
  settings_page.click_settings_link
end

Then("I should be able to change default page to calendar") do
  settings_page.click_default_screen
  settings_page.click_new_default_option
  sleep 2
end

#TEST TO CHANGE NOTE COLOUR
