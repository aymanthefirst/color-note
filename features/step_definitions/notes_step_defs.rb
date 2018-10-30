Given("I have opened the app") do
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/textTitle")[:text]).to include "Welcome"
end

When("I skip the tutorial") do
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  sleep 3
end

Then("I am on the notes page") do
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/empty_text")[:text]).to include "Add Note"
end
