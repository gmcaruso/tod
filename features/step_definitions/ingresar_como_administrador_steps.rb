Then(/^se debe ver el campo "(.*?)"$/) do |campo|
  expect(page).to have_content('Max amount of people')
end

Given(/^voy a la vista HOME$/) do
  visit '/'
end
