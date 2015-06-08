Given(/^un Evento creado$/) do
  step 'voy a la vista "Home"'
  step 'cliqueo en el boton "Nuevo Evento"'
  step 'veo el titulo "Nuevo Evento"'
  step 'seteo el cupo en "30"'
  step 'seteo el nivel de audiencia en "Inicial"'
  step 'cliqueo en el boton "Nuevo"'
  step 'se debe ver el mensaje "Evento creado correctamente"'
end

Given(/^voy a la vista "(.*?)"$/) do |arg1|
  visit '/'
end

Given(/^cliqueo en el boton "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^cambio el nivel de audiencia del evento a "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^se debe ver el mensaje "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

