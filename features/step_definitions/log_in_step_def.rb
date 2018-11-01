Given("I access the facebook sign in page") do
  notes_page.skip_tutorial
  search_bar_page.click_menu
  log_in_page.click_log_in_page
end

When("I click on the login button") do
  log_in_page.click_facebook_log_in
end

Then("I am redirected and logged in") do
  expect(log_in_page.isloggedin?).to eq("Manav Pandey")
end

Given("I access the Google sign in page") do
  notes_page.skip_tutorial
  search_bar_page.click_menu
  log_in_page.click_log_in_page
  log_in_page.click_google_log_in


 end

When("I click on the gmail username") do
  log_in_page.click_sign_in
  log_in_page.click_on_email

  end


  Then("I am am logged in") do
    # Not possible because of the inspect error
  end
