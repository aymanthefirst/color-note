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

  def add_complete_note string
    click_add_note_from_nav
    click_add_text_note
    input_note_info string
    3.times do
      click_back_navigation
      sleep 1
    end
  end

  def add_multiple_notes n
    (1..n).each do |i|
      add_complete_note "item#{i}"
    end
  end

  def sort_notes_alphabetically
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/text_button_center").click
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/list").find_elements(:class, "android.widget.LinearLayout")[2].click
  end

  def get_all_notes_titles
    answer = @driver.find_elements(:id, "com.socialnmobile.dictapps.notepad.color.note:id/title").map do |item|
      item[:text]
    end
    return answer
  end

  def click_note num
    @driver.find_elements(:id, "com.socialnmobile.dictapps.notepad.color.note:id/background")[num-1].click
  end

  def click_note_options
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/overflow_btn").click
  end

  def click_check_note_option
    @driver.find_elements(:class, "android.widget.LinearLayout")[0].click
  end

  def click_delete_note_dropdown
    # @driver.find_elements(:id, "android:id/content")[1].click
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/bottom_menu_delete").click
    @driver.find_element(:id, "android:id/button1").click
  end

  def get_note_title_decoration
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").style("text-decoration")
  end

  def open_note_options num
    note = @driver.find_elements(:id, "com.socialnmobile.dictapps.notepad.color.note:id/background")[num-1]
    x = note.location["x"] + note.size["width"]/2
    y = note.location["y"] + note.size["height"]/2
    @driver.swipe({start_x: x, start_y: y, end_x: x, end_y: y, duration: 3000})
  end

end
