Then(/^veo el evento con cupo "(.*?)" nivel de audiencia "(.*?)" y cupo maximo "(.*?)"$/) do |cupo, nivel, cupomax|
  expect(page).to have_content(cupo)
  expect(page).to have_content(nivel)
  expect(page).to have_content(cupomax)
end

Then(/^NO veo el boton "(.*?)"$/) do |boton|
  expect(page).to_not have_content(boton)
end

Then(/^cliqueo Cerrar Sesion$/) do
  pending # express the regexp above with the code you wish you had
end
