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

  def get_note_date_bar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/datetime_relative")
  end

  def input_note_title string
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").send_keys string
  end

  def input_note_info string
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").send_keys string
  end

  def set_note_colour_purple
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/color_btn").click
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn6").click
  end

  def get_first_note_title
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/title")[:text]
  end

  def click_add_note_from_nav
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_btn1").click
  end

  def click_add_checklist_note
    @driver.find_elements(:id, "com.socialnmobile.dictapps.notepad.color.note:id/text")[1].click
  end

  def click_add_checklist_item
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/editlist").find_element(:class, "android.widget.LinearLayout").click
  end

  def input_checklist_item_text string
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit").send_keys string
  end

  def input_checklist_item string
    input_checklist_item_text string
    @driver.find_element(:id, "android:id/button3").click
  end

  def input_last_checklist_item string
    input_checklist_item_text string
    @driver.find_element(:id, "android:id/button1").click
  end

end
