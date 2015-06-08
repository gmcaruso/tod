Then(/^veo el titulo "(.*?)"$/) do |titulo|
  expect(page).to have_content(titulo)
end

Then(/^seteo el cupo en "(.*?)"$/) do |cupo|
  fill_in('amount_of_people', :with => cupo)
end

Then(/^seteo el nivel de audiencia en "(.*?)"$/) do |nivel|
  pending
end
