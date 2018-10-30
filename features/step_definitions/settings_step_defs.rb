When("I click on the settings link") do
  expect(settings_page.click_settings_link).to eq(true)
end

Then("I should be able to change default page to calendar") do
  expect(settings_page.click_new_default_option).to eq(true)
  sleep 2
  $driver.closeApp
  $driver.launchApp
  sleep 2

end
