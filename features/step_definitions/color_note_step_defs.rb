Given("I can open the app") do
  expect(homepage.allow_access_displayed?).to be(true)
end

When("I click on allow ColorNote to access media") do
  expect(homepage.click_allow).to be(true)
end

And("I click skip") do
  expect(homepage.tutorial_page_dislpayed?).to be(true)
  expect(homepage.click_skip).to be(true)
end

Then("I should be able to access the homepage") do
  expect(homepage.homepage_displayed?).to be(true)
  sleep 2
end
