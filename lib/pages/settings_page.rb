class SettingsPage

  def initialize driver
    @driver = driver
  end

  def click_settings_link
    @driver.find_elements(:class, "android.widget.LinearLayout")[12].click
  end

  def click_default_screen
    @driver.find_elements(:class, "android.widget.LinearLayout")[7].click
  end

  def click_new_default_option
    @driver.find_elements(:class, "android.widget.CheckedTextView").last.click
  end

  def click_default_color
    @driver.find_elements(:class, "android.widget.LinearLayout")[8].click
  end

  def choose_default_color
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn5").click
  end

  def check_new_default_color_selected?
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn5").selected?
  end

  def click_default_font_size
    @driver.find_elements(:class, "android.widget.LinearLayout")[10].click
  end

  def choose_default_font_size_huge
    @driver.find_elements(:class, "android.widget.CheckedTextView").last.click
  end

  def choose_default_font_size_tiny
    @driver.find_elements(:class, "android.widget.CheckedTextView").first.click
  end

  def choose_default_font_size_medium
    @driver.find_elements(:class, "android.widget.CheckedTextView")[2].click
  end

  def click_on_existing_note
    @driver.find_elements(:class, "android.widget.RelativeLayout")[5].click
  end

  def click_list_item_height
    @driver.find_elements(:class, "android.widget.LinearLayout")[11].click
  end

  def choose_list_item_height_tiny
    @driver.find_elements(:class, "android.widget.CheckedTextView").last.click
  end

  def choose_list_item_height_normal
    @driver.find_elements(:class, "android.widget.CheckedTextView").first.click
  end

  def click_on_existing_checklist
    @driver.find_elements(:class, "android.widget.RelativeLayout")[5].click
  end

  def click_settings_link_class_changed_bug
    @driver.find_elements(:class, "android.widget.LinearLayout")[13].click
  end

  def scroll_down
    @driver.swipe(:start_x => 0, :start_y => 1800, :end_x => 0, :end_y => 295, :duration => 2000)
  end

  def click_show_count_on_widget
    @driver.find_elements(:class, "android.widget.LinearLayout")[3].click
  end

  def click_show_all_day_reminder
    @driver.find_elements(:class, "android.widget.LinearLayout")[5].click
  end

  def click_widget_transparency
    @driver.find_elements(:class, "android.widget.LinearLayout")[7].click
  end

  def choose_widget_transparency
    @driver.find_elements(:class, "android.widget.CheckedTextView")[7].click
  end

  def click_calendar_link
    @driver.find_elements(:class, "android.widget.LinearLayout")[7].click
  end

  def click_first_day_of_the_week
    @driver.find_elements(:class, "android.widget.LinearLayout")[8].click
  end

  def choose_first_day_of_the_week
    @driver.find_elements(:class, "android.widget.CheckedTextView").first.click
  end

  def click_show_lunar_date
    @driver.find_elements(:class, "android.widget.LinearLayout")[9].click
  end

  def choose_lunar_date
    @driver.find_elements(:class, "android.widget.CheckedTextView").last.click
  end

  def check_calendar_displayed?
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/title_container").displayed?
  end

  def click_text_editor
    @driver.find_elements(:class, "android.widget.LinearLayout")[10].click
  end

  def click_edit_title_in_text_editor
    @driver.find_elements(:class, "android.widget.LinearLayout")[1].click
  end

  def click_use_colordict_in_text_editor
    @driver.find_elements(:class, "android.widget.LinearLayout")[3].click
  end

  def click_checklist_editor
    @driver.find_elements(:class, "android.widget.LinearLayout")[12].click
  end

  def click_list_item_drag_and_drop
    @driver.find_elements(:class, "android.widget.LinearLayout")[1].click
  end

  def click_auto_sort_by_status
    @driver.find_elements(:class, "android.widget.LinearLayout")[3].click
  end

  def click_auto_link
    @driver.find_elements(:class, "android.widget.LinearLayout")[14].click
  end

  def click_note_edit_button
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_btn").click
  end

  def check_note_enable?
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").enabled?
  end

  def check_colordict_displayed?
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/search_bar").displayed?
  end

  def check_list_item
    @driver.find_elements(:class, "android.widget.RelativeLayout")[3].click
  end

  def click_second_checklist
    @driver.find_elements(:class, "android.widget.RelativeLayout")[5].click
  end

  def click_checklist_edit_button
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_btn").click
  end

  def check_if_button_order_displayed?
    @driver.find_elements(:class, "android.widget.ImageButton")[2].displayed?
  end

  def click_button_to_change_order
    @driver.find_elements(:class, "android.widget.ImageButton")[2].click
  end

end
