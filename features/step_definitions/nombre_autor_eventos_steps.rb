Then(/^veo el evento con autor "(.*?)" cupo "(.*?)" nivel de audiencia "(.*?)"$/) do |usuario, cupo, level|
  expect(page).to have_content(usuario)
  expect(page).to have_content(cupo)
  expect(page).to have_content(level)
end
