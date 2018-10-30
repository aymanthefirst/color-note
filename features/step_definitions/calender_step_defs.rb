When("I click on sidebar") do
  expect($driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/textTitle")[:text]).to include "Welcome"
  $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  sleep 3

end
  
  When("I click Calendar") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("I select one of the date") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should be able to mark a note") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  