#TEST TO SLEECT DEFAULT SCREEN
When("I click on the settings link") do
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

Then("I should be able to see the that default colour of the note has changed") do
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

And("I select and change the default list item height") do
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
When("I scroll down on the app") do
  sleep 2
  # settings_page.scroll_down
  settings_page.swipe_down
  # $driver.swipe(:start_x => 0, :start_y => 1800, :end_x => 0, :end_y => 315, :duration => 2000)
  sleep 2
end

Then("I should be able to change the widget settings") do
  settings_page.click_show_count_on_widget
  sleep 2
  settings_page.click_show_all_day_reminder
  sleep 2
  settings_page.click_widget_transparency
  settings_page.choose_widget_transparency
  sleep 2
end

#TEST TO CHANGE THE CALENDAR OPTIONS IN THE SETTINGS
When("I click on the calendar link") do
  settings_page.click_calendar_link
end

Then("I should be able to change the calendar settings") do
  settings_page.click_first_day_of_the_week
  settings_page.choose_first_day_of_the_week
  settings_page.click_show_lunar_date
  settings_page.choose_lunar_date
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
end

And("I should be able to see the changes in the calendar") do
  expect(settings_page.check_calendar_displayed?).to eq(true)
end

#TEST TO CHANGE THE NOTE EDIT TEXT OPTIONS IN THE SETTINGS
When("I select and change the text editor options") do
  settings_page.click_text_editor
  settings_page.click_edit_title_in_text_editor
  settings_page.click_use_colordict_in_text_editor
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
  notes_page.click_back_navigation # KEYCODE_BACK
end

Then("I should be able to see the changes on the note") do
  settings_page.click_on_existing_note
  settings_page.click_note_edit_button
  expect(settings_page.check_note_enable?).to be(false)
  expect(settings_page.check_colordict_displayed?).to be(true)
end

#TEST TO CHANGE THE CHECLIST OPTION IN THE SETTINGS
Given("I have added a checklist and have changed the order") do
  notes_page.click_add_note_from_nav
  notes_page.click_add_checklist_note
  notes_page.click_add_checklist_item
  notes_page.input_checklist_item "List 1"
  notes_page.input_checklist_item "List 2"
  notes_page.input_checklist_item "List 3"
  notes_page.input_last_checklist_item "List 4"
  sleep 2
  $driver.swipe(:start_x => 109, :start_y => 779, :end_x => 109, :end_y => 550, :duration => 2000)
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
  settings_page.click_second_checklist
  notes_page.click_back_navigation # KEYCODE_BACK
end

When("I select and change the checklist editor options") do
  settings_page.click_checklist_editor
  settings_page.click_list_item_drag_and_drop
  settings_page.click_auto_sort_by_status
  notes_page.click_back_navigation # KEYCODE_BACK
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
  sleep 2
  notes_page.click_back_navigation # KEYCODE_BACK
end

Then("I should be able to see the changes on the checklist") do
  settings_page.click_on_existing_checklist
  settings_page.check_list_item
  sleep 2
  settings_page.click_checklist_edit_button
  settings_page.click_button_to_change_order
  sleep 2
  expect(settings_page.check_if_button_order_displayed?).to be(true)
end
