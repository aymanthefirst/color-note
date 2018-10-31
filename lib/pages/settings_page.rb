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
    @driver.find_elements(:class, "android.widget.CheckedTextView")[4].click
  end

  def choose_default_font_size_tiny
    @driver.find_elements(:class, "android.widget.CheckedTextView")[0].click
  end

  def choose_default_font_size_medium
    @driver.find_elements(:class, "android.widget.CheckedTextView")[2].click
  end

  def click_on_existing_note
    @driver.find_elements(:class, "android.widget.RelativeLayout")[5].click
  end

end
