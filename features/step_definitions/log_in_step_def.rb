Given("I access the facebook sign in page") do
  notes_page.skip_tutorial
  search_bar_page.click_menu
  log_in_page.click_log_in_page

end

When("I click on the login button") do
  log_in_page.click_facebook_log_in
end

Then("I am redirected and logged in") do
  expect(log_in_page.isloggedin?).to eq("Ayman El'Harake")
end

Given("I access the email sign in page") do

end
