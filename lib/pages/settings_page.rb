class SettingsPage

  def initialize driver
    @driver = driver
  end

  def click_settings_link
    @driver.find_elements(:class, "android.widget.LinearLayout")[12].click
  end

  def click_default_screen
    puts ">>>>>>>>>>>>>>>>>>>>>>"
    puts @driver.find_elements(:class, "android.widget.LinearLayout")[7][:text]
    puts "<<<<<<<<<<<<<<<<<<<<<<"

    @driver.find_elements(:class, "android.widget.LinearLayout")[7].click
  end

  def click_new_default_option
    @driver.find_elements(:class, "android.widget.CheckedTextView").last.click
  end

end
