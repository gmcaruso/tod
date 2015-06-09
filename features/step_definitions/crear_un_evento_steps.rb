Then(/^veo el titulo "(.*?)"$/) do |titulo|
  expect(page).to have_content(titulo)
end

Then(/^seteo el cupo en "(.*?)"$/) do |cupo|
  fill_in('amount_of_people', :with => cupo)
end

Then(/^seteo el nivel de audiencia en "(.*?)"$/) do |nivel|
  fill_in('audience_level', :with => nivel)
end

Given(/^modifico el nivel de audiencia en "(.*?)"$/) do |nivel|
  fill_in('event_audience_level', :with => nivel)
end
