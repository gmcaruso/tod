Then(/^veo el titulo "(.*?)"$/) do |titulo|
  expect(page).to have_content(titulo)
end

Then(/^seteo el cupo en "(.*?)"$/) do |cupo|
  fill_in('amount_of_people', :with => cupo)
end

Then(/^seteo el nivel de audiencia en "(.*?)"$/) do |nivel|
  select(nivel, :from => 'audience_level')
end

Given(/^modifico el nivel de audiencia en "(.*?)"$/) do |nivel|
  select(nivel, :from => 'event_audience_level')
end

Given(/^cliqueo en el link Nuevo Evento$/) do
  click_link('Nuevo Evento')
end
