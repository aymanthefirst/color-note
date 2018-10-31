class HomePage


  def initialize driver
    @driver = driver
  end

  def allow_access_displayed?
    @driver.find_element(:id, "com.android.packageinstaller:id/dialog_container").displayed?
  end

  def click_allow
    @driver.find_element(:id, "com.android.packageinstaller:id/permission_allow_button").click
  end

  def tutorial_page_dislpayed?
    @driver.find_element(:id, "android:id/content").displayed?
  end

  def click_skip
    @driver.find_elements(:id, "com.socialnmobile.dictapps.notepad.color.note:id/tutorial_overlay")[2].find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  end

  # def click_skip
  #   @driver.tutorial_page.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  # end

  def homepage_displayed?
    @driver.find_element(:id,"com.socialnmobile.dictapps.notepad.color.note:id/logo_image").displayed?
  end

end
