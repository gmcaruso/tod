Then(/^se debe ver el campo "(.*?)"$/) do |campo|
  pending #expect(page).to have_content(campo)
end

Given(/^voy a la vista HOME$/) do
  visit '/'
end
