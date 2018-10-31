class NotesPage

  def initialize driver
    @driver = driver
  end

  def click_add_note
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/empty").click
  end

  def click_add_text_note

    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/text").click
  end

  def click_back_navigation
    @driver.press_keycode 4
  end

  def get_title_text
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/textTitle")[:text]
  end

  def skip_tutorial
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  end

  def get_notes_text
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/empty_text")[:text]
  end

end
