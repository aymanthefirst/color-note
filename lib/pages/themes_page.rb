class ThemesPage

  def initialize driver
    @driver = driver
  end

  def app_displayed?
    @driver.find_elements(:class, "android.widget.FrameLayout").first.displayed?
  end

  def click_skip
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  end

  def click_nav_bar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_logo").click
  end

  def click_themes_link
    @driver.find_elements(:class, "android.widget.LinearLayout")[11].click
  end

  def click_soft_theme
    @driver.find_elements(:class, "android.widget.LinearLayout")[4].click
  end

  def click_dark_theme
    @driver.find_elements(:class, "android.widget.LinearLayout")[5].click
  end

  def click_default_theme
    @driver.find_elements(:class, "android.widget.LinearLayout")[3].click
  end

end
