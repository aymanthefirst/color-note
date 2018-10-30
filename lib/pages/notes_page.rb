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

end
