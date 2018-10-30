class HomePage

  def initialize driver
    @driver = driver
  end

  def is_first_element_disiplayed?
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/textTitle").displayed?
  end

  def click_allow
    @driver.find_element(:id, "com.android.packageinstaller:id/permission_allow_button").click
  end

  def click_skip
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  end

  def click_menu
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/img_sidebar").click
  end

  def click_totorial_button_start
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start").click
  end

end
