Given("I am on the navbar") do
    calendar_page.app_displayed
    calendar_page.click_skip_option
    calendar_page.click_navbar
end
  
Given("I click on the navbar menu") do
    calendar_page.click_navbar
end

And("I click on the archive") do
    archive_page.click_archive_link
    sleep 2
end

And("I click on the calendar as the option it should show all notes") do
    archive_page.click_dropdown
    archive_page.click_dropdown_calendar
    sleep 2
end

When("I click on the achived notes") do
    archive_page.click_archived_note
end

Then("I should be able to edit and save it") do
    archive_page.click_on_edit_send_keys
end
