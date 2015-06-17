Then(/^NO se debe ver el campo "(.*?)"$/) do |campo|
  expect(page).to_not have_content(campo)
end