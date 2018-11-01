Given("I access the facebook sign in page") do
  notes_page.skip_tutorial
  search_bar_page.click_menu
  log_in_page.click_log_in_page
  log_in_page.click_facebook_log_in
end


Given("I input a valid username") do
  log_in_page.fill_fb_username
end

Given("I input a valid password") do
  log_in_page.fill_fb_password
end

When("I click on the login button") do
  log_in_page.click_submit
end

Then("I am redirected and logged in") do

end

Given("I input a invalid username") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I get an error message") do
  pending # Write code here that turns the phrase above into concrete actions
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

