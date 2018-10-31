Given("I can access the color note app") do
  calendar_page.app_displayed
end

And("I click skip and navbar option") do
  calendar_page.click_skip_option
  calendar_page.click_navbar
end

When("I click on the calendar") do
  calendar_page.click_calendar_link
  calendar_page.click_calendar_date
  calendar_page.click_add_sign
  calendar_page.note_title_for_calendar
  calendar_page.note_detailed_text
  calendar_page.click_back_navigation
  sleep 4
end

Then("I should be able to put the text details") do
  
end
