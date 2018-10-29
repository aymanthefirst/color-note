class HomePage


  def initialize driver
    @driver = driver
  end

  def is_first_element_disiplayed?
    @driver.find_element(:id, "com.android.packageinstaller:id/permission_allow_button").displayed?
  end


  def click_allow_access
    @driver.find_element(:id, "com.android.packageinstaller:id/permission_allow_button").click
  end


  def click_skip
    @driver.find_element(:id, "android:id/content").click
  end


  def continue_to_main_page
    click_allow_access
    click_skip
  end

end
