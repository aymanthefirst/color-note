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

#@manavendu

Given("I access the Google sign in page") do
  notes_page.skip_tutorial
  search_bar_page.click_menu
  log_in_page.click_log_in_page
  log_in_page.click_google_log_in
  log_in_page.click_sign_in
  log_in_page.click_on_email


  sleep 5
end

When("I click on the gmail username") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am logged in and see the navbar with username") do
  pending # Write code here that turns the phrase above into concrete actions
end

