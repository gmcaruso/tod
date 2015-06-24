Then(/^NO se debe ver el campo "(.*?)"$/) do |campo|
  expect(page).to_not have_content(campo)
end

Given(/^cliqueo en el link Modificar$/) do
  pending # express the regexp above with the code you wish you had
end
