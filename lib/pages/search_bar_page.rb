class SearchBarPage

  def initialize driver
    @driver = driver
  end

  def click_search_page
    @driver.find_elements(:class, "android.widget.LinearLayout")[10].click
  end

  def fill_search_bar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_search").send_keys("The first note \n")
  end

  def check_for_example_title
      @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/title").text
  end

end
