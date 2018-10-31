Given("A valid note exists") do
  notes_page.skip_tutorial
  notes_page.click_add_note
  notes_page.click_add_text_note
  notes_page.input_note_title "Example title"
  notes_page.input_note_info "Example note description"
  notes_page.set_note_colour_purple
  notes_page.click_back_navigation # closing keyboard
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
end

And("I am on the search page") do
  tutorial.click_menu
  search_bar_page.click_search_page
end

When("I type valid note details in the search bar") do
  search_bar_page.fill_search_bar
end

Then("I should get the valid results") do
  expect(search_bar_page.check_for_example_title).to eq("example title")
end

Given("I am on the the search page") do
  tutorial.click_menu
  search_bar_page.click_search_page
end

When("I type invalid note details in the search bar") do
  search_bar_page.fill_search_bar
end

Then("I should receive an error for not finding the product") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the search box") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the search box should be empty") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I type valid product details in the search bar") do
  pending # Write code here that turns the phrase above into concrete actions
end
