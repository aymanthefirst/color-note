class ArchivePage

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

    def click_archive_link
      @driver.find_elements(:class, "android.widget.LinearLayout")[8].click
    end

    def click_dropdown
      @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/color_noti").click
    end

    def click_dropdown_calendar
      @driver.find_elements(:class, "android.widget.CheckedTextView")[2].click
    end

    def click_archived_note
      @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/background").click
    end

    def click_on_edit_send_keys
      @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_btn").click

      @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").click
      @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").send_keys(" New edited Text")
    end

end
    