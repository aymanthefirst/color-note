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

  def click_show_count_on_widget
    @driver.find_elements(:class, "android.widget.LinearLayout")[10].click
  end

  def click_show_all_day_reminder
    @driver.find_elements(:class, "android.widget.LinearLayout")[12].click
  end

  def click_widget_transparency
    @driver.find_elements(:class, "android.widget.LinearLayout")[15].click
  end

end
