# encoding: UTF-8
Given(/^un Evento creado$/) do
  Event.all.destroy
  @event = Event.new
  @event.amount_of_people = 50
  @event.audience_level = "Inicial"
  @event.max_amount_of_people = 60
  @event.save
end

Given(/^voy a la vista "(.*?)"$/) do |pagina|
  visit (pagina)
end

Given(/^cliqueo en el link "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^se debe ver el mensaje "(.*?)"$/) do |mensaje|
  expect(page.has_content?(mensaje))
end
