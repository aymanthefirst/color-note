class SearchBarPage

  def initialize driver
    @driver = driver
  end

  def click_search_page
    puts "-----------------------------------"
    @driver.find_elements(:class, "android.widget.LinearLayout")[10].click
  end

  def fill_search_bar
    @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_search").send_keys("the first note \n")
    # @driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_search").native.send_keys(:return)
  end

end
