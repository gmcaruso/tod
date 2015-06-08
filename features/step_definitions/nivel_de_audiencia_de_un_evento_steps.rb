# encoding: UTF-8
Given(/^un Evento creado$/) do
  step 'voy a la vista "HOME"'
  step 'cliqueo en el link "Nuevo Evento"'
  step 'veo el titulo "Nuevo Evento"'
  step 'seteo el cupo en "0"'
  step 'seteo el nivel de audiencia en "Inicial"'
  step 'cliqueo en el boton "Nuevo"'
  step 'se debe ver el mensaje "El Cupo debe ser un valor numérico contenido entre 1 y 10000"'
end

Given(/^voy a la vista "(.*?)"$/) do |pagina|
  visit (pagina)
end

Given(/^cliqueo en el link "(.*?)"$/) do |link|
  click_link(link)
end


Given(/^cliqueo en el boton "(.*?)"$/) do |boton|
  click_button('boton')
end

Given(/^cambio el nivel de audiencia del evento a "(.*?)"$/) do |nivel|
  fill_in('Nivel de audiencia', :with => nivel)
end

Then(/^se debe ver el mensaje "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

