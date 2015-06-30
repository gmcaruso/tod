Then(/^se debe ver el campo "(.*?)"$/) do |campo|
  expect(page).to have_content() #VERRRRRRRRRRRRRRRRRRR
end

Then(/^No debo ver el campo "(.*?)"$/) do |campo|
  expect(page).to_not have_content(campo)
end

Given(/^voy a la vista HOME$/) do
  visit '/'
end
