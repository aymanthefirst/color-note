class Calender

  def initialize driver
    @driver = driver
  end

  def launch_app
    @driver.find_elements(:class, "android.widget.FrameLayout").first.displayed?
  end

  def click_skip
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  end

  def click_navbar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_logo").click
  end

end
