Given("I am able to access the app") do
  expect(themes_page.app_displayed?).to eq(true)
end

And("I click skip the tutorial") do
  themes_page.click_skip
  sleep 3
end

When("I click on the nav bar") do
  themes_page.click_nav_bar
  sleep 3
end

And("I click on the theme link") do
  themes_page.click_themes_link
end

Then("I should be able to change the theme to soft") do
  themes_page.click_soft_theme
end

And("I should be able to change the theme to dark") do
  themes_page.click_nav_bar
  themes_page.click_themes_link
  themes_page.click_dark_theme
end

And("I should be able to change the theme back to default") do
  themes_page.click_nav_bar
  themes_page.click_themes_link
  themes_page.click_default_theme
end
