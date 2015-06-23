Then(/^NO deberia ver la opcion Nuevo Evento y Nueva Propuesta$/) do
  expect(page).to_not have_content('Nuevo Evento')
  expect(page).to_not have_content('Nueva Propuesta')
end

Then(/^NO deberia ver la opcion Modificar$/) do
  expect(page).to_not have_content('Modificar')
end

Then(/^deberia ver la opcion Nuevo Evento y Nueva Propuesta$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^deberia ver la opcion Modificar$/) do
  pending # express the regexp above with the code you wish you had
end
