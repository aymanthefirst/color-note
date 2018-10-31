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
  search_bar_page.click_menu
  search_bar_page.click_search_page
end

When("I type valid note details in the search bar") do
  search_bar_page.fill_search_bar
end

Then("I should get the valid results") do
  expect(search_bar_page.check_for_example_title).to eq("Example title")
end

Given("I am on the the search page") do
  notes_page.skip_tutorial
  tutorial.click_menu
  search_bar_page.click_search_page
end

Given("there is writting in the search box") do
  expect(search_bar_page.is_search_bar_empty?).to be false
end


When("I type invalid note details in the search bar") do
  search_bar_page.fill_search_bar
end

Then("I should receive an error for not finding the product") do
  # Ayman - Can not find id for text containing "No results found"
end

When("I click on the search box") do
  search_bar_page.click_search_bar
end

Then("the search box should not be empty") do
    expect(search_bar_page.is_search_bar_empty?).to be false
end
