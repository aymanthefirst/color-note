#TEST TO SLEECT DEFAULT SCREEN
When("I click on the settings link") do
  puts "-------------------------"
    puts $driver.get_source
  puts "-------------------------"
  settings_page.click_settings_link
end

Then("I should be able to change default page to calendar") do
  settings_page.click_default_screen
  settings_page.click_new_default_option
  sleep 2
end

#TEST TO CHANGE NOTE COLOUR
Given("I have added a note") do
  notes_page.click_add_note
  notes_page.click_add_text_note
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").send_keys "Test"
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").send_keys "Example note description"
  sleep 2
  notes_page.click_back_navigation # closing keyboard
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  sleep 2
end

When("I select and change the deault color") do
  settings_page.click_default_color
  settings_page.choose_default_color
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  sleep 2
end

And("I click add note") do
  notes_page.click_add_note_from_nav
  notes_page.click_add_text_note
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").send_keys "After changing default color"
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").send_keys "Example note description"
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
  sleep 2
end

Then("I should be able to see the that default colour of the has changed") do
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/color_btn").click
  expect(settings_page.check_new_default_color_selected?).to be(true)
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  sleep 4
end

#TEST TO CHANGE FONT SIZE
When("I select and change the deault font size") do
  settings_page.click_default_font_size
  settings_page.choose_default_font_size_huge
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
end

Then("I should be able to select the note and see the font size has changed") do
  settings_page.click_on_existing_note
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
end

And("I should be able to change the font size to anything else or back to default") do
  themes_page.click_nav_bar
  settings_page.click_settings_link
  settings_page.click_default_font_size
  settings_page.choose_default_font_size_tiny
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  settings_page.click_on_existing_note
  sleep 3
end

#TEST TO CHANGE LIST ITEM HEIGHT
Given("I have added a checklist") do
  notes_page.click_add_note_from_nav
  notes_page.click_add_checklist_note
  notes_page.click_add_checklist_item
  notes_page.input_checklist_item "List 1"
  notes_page.input_last_checklist_item "List 2"
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
end

When("I have clicked on the settings link") do
  settings_page.click_settings_link_class_changed_bug
end

When("I select and change the default list item height") do
  settings_page.click_list_item_height
  settings_page.choose_list_item_height_tiny
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
end

Then("I should be able to select the checklist and see that the list item height has changed") do
  settings_page.click_on_existing_checklist
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
end

And("I should be able to change the list item height back to default") do
  themes_page.click_nav_bar
  settings_page.click_settings_link_class_changed_bug
  settings_page.click_list_item_height
  settings_page.choose_list_item_height_normal
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  sleep 2
  settings_page.click_on_existing_checklist
  sleep 2
end

#TEST TO ADJUST THE WIDGET OPTIONS
Then("I should be able to change the widget settings") do
  pending # Write code here that turns the phrase above into concrete actions
end
