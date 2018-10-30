Given("I have opened the app") do
<<<<<<< HEAD

=======
>>>>>>> 65ac95809d8074325e4a96e3fff752e10c4ab754
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/textTitle")[:text]).to include "Welcome"
end

When("I skip the tutorial") do
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
<<<<<<< HEAD
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/img_sidebar").click
=======
  sleep 3
>>>>>>> 65ac95809d8074325e4a96e3fff752e10c4ab754
end

Then("I am on the notes page") do
  # $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/img_sidebar").click()

  # expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/empty_text")[:text]).to include "Add Note"

end
