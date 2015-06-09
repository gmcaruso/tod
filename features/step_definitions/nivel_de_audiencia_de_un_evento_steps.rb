# encoding: UTF-8
Given(/^un Evento creado$/) do
  @event = Event.new
  @event.amount_of_people = 50
  @event.audience_level = "Inicial"
  @event.save
end

Given(/^voy a la vista "(.*?)"$/) do |pagina|
  visit (pagina)
end

Given(/^cliqueo en el link "(.*?)"$/) do |link|
  click_link(link)
end

Given(/^cliqueo en el boton "(.*?)"$/) do |boton|
  #click_link(boton)
  pending
end


Given(/^cambio el nivel de audiencia del evento a "(.*?)"$/) do |nivel|
  #fill_in('Nivel de audiencia', :with => nivel)
  pending
end

Then(/^se debe ver el mensaje "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
