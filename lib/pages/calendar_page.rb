class CalendarPage

  def initialize driver
    @driver = driver
  end

  def app_displayed
    @driver.find_elements(:class, "android.widget.FrameLayout").first.displayed?
  end

  def click_skip_option
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  end

  def click_navbar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_logo").click
  end

  def click_calendar_link
    @driver.find_elements(:class, "android.widget.LinearLayout")[7].click
  end

  def click_calendar_date
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_btn1").click
  end

  def click_add_sign
    @driver.find_elements(:class, "android.widget.LinearLayout")[3].click
  end

  def note_title_for_calendar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").send_keys("First Note")
  end

  def note_detailed_text
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").send_keys("This is detailed text")
  end

  def save_notes_in_calandar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").click
  end
  
  def make_the_notes_archive
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/overflow_btn").click
  end
  
  def click_archive
    @driver.find_elements(:class, "android.widget.RelativeLayout")[4].click 
    @driver.find_element(:id, "android:id/button1").click
  end
end