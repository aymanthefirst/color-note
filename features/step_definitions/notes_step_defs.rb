Given("I have opened the app") do
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/textTitle")[:text]).to include "Welcome"
end

When("I skip the tutorial") do
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
end

Then("I am on the notes page") do
  sleep 3
  # $driver.get_source
  # puts $driver.source
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/empty_text")[:text]).to include "Add Note"
end

#Ayman
When("I click add note in the centre of the page") do
   notes_page.click_add_note
end

When("I click add a text note") do
   notes_page.click_add_text_note
   puts $driver.source
end

Then("I will be on a new notes page") do
  # expect(notes_page.check_on_notes_page).to eq()
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/datetime_relative").displayed?).to be true
end

Given("I am editting a new note") do
  # All the previous steps to get here
  # pending # Write code here that turns the phrase above into concrete actions
end

When(/I input a note title of (.*)/) do |title|
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").send_keys title
end

When("I input note information") do
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").send_keys "Example note description"
end

When("I change the note colour") do
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/color_btn").click
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn6").click
end

When("I accept the note") do
  # $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/back_btn").click
  sleep 2
  $driver.press_keycode 4 # closing keyboard
  $driver.press_keycode 4 # KEYCODE_BACK
end

When("I click back") do
  # $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/back_btn").click
  sleep 2
  $driver.press_keycode 4 # KEYCODE_BACK
end

Then(/I should see a note with the title (.*)/) do |title|
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/title")[:text]).to include title
end
