Given("I have opened the app") do
  expect(notes_page.get_title_text).to include "Welcome"
end

When("I skip the tutorial") do
  notes_page.skip_tutorial
end

Then("I am on the notes page") do
  expect(notes_page.get_notes_text).to include "Add Note"
end

#Ayman
When("I click add note in the centre of the page") do
   notes_page.click_add_note
end

When("I click add a text note") do
   notes_page.click_add_text_note
end

Then("I will be on a new notes page") do
  expect(notes_page.get_note_date_bar.displayed?).to be true
end

Given("I am editting a new note") do
  notes_page.skip_tutorial
  notes_page.click_add_note
  notes_page.click_add_text_note
end

When(/I input a note title of (.*)/) do |title|
  notes_page.input_note_title title
end

When("I input note information") do
  notes_page.input_note_info "Example note description"
end

When("I change the note colour") do
  notes_page.set_note_colour_purple
end

When("I accept the note") do
  notes_page.click_back_navigation # closing keyboard
  notes_page.click_back_navigation # KEYCODE_BACK
end

When("I click back") do
  notes_page.click_back_navigation # KEYCODE_BACK
end

Then(/I should see a note with the title (.*)/) do |title|
  expect(notes_page.get_first_note_title).to include title
end


When("I click add note from the navbar") do
  notes_page.click_add_note_from_nav
end

When("I click add a checklist note") do
  notes_page.click_add_checklist_note
end

When("I click add item") do
  notes_page.click_add_checklist_item
end

When(/I add an item called (.*)/) do |item|
  notes_page.input_checklist_item item
end

When(/I add a final item called (.*)/) do |item|
  notes_page.input_last_checklist_item item
end

Given("I add {int} notes") do |int|
  notes_page.add_multiple_notes int
end

When("I sort alphabetically") do
  notes_page.sort_notes_alphabetically
end

Then("I should see {int} notes in alphabetical order") do |int|
  answer = (1..int).map {|i| "item#{i}"}
  expect(notes_page.get_all_notes_titles).to eq answer
end
