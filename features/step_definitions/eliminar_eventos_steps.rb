Then(/^veo el evento con cupo "(.*?)" y nivel de audiencia "(.*?)"$/) do |cupo, nivel|
  expect(page).to have_content(cupo)
  expect(page).to have_content(nivel)
end

