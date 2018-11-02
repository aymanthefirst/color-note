class SearchBarPage

  def initialize driver
    @driver = driver
  end

  def fill_search_bar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_search").send_keys("the first note \n")
    # @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_search").native.send_keys(:return)
  end

  def click_search_bar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_search").click
  end

  def is_search_bar_empty?
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_search").text.empty?
  end

  def click_menu
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_logo").click
  end

  def click_search_page
    @driver.find_elements(:class, "android.widget.LinearLayout")[10].click
  end

  def check_for_example_title
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/title").text
  end

end
