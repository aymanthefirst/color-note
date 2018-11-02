Given("I have deleted a note") do
  notes_page.skip_tutorial
  notes_page.add_multiple_notes 1
  notes_page.open_note_options 1
  notes_page.click_delete_note_dropdown
end

Given("I navigate to the trash page") do
  search_bar_page.click_menu
  trash_page.click_menu_trash
end

When("I restore the note from the navbar") do
  trash_page.restore_open_note
end

Then("I will be on an empty trash page") do
  expect(trash_page.get_notes_count).to eq(0).or eq(1)
end

When("I click permanently delete on the dropdown") do
  trash_page.permanently_delete_note
end
