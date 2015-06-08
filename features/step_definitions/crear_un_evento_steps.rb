Then(/^veo el titulo "(.*?)"$/) do |titulo|
  expect(page).to have_content(titulo)
end

Then(/^seteo el cupo en "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^seteo el nivel de audiencia en "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
