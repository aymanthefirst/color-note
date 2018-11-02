class TrashPage

  def initialize driver
    @driver = driver
  end

  def click_menu_trash
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/list").find_elements(:class, "android.widget.LinearLayout")[3].click
  end

  def restore_open_note
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_btn").click
    @driver.find_element(:id, "android:id/button1").click
  end

  def get_notes_count
    @driver.find_elements(:id, "com.socialnmobile.dictapps.notepad.color.note:id/background").length
  end

  def permanently_delete_note
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/bottom_menu_permenently_delete").click
    @driver.find_element(:id, "android:id/button1").click
  end

end
