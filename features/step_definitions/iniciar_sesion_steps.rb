Then(/^NO deberia ver la opcion Nuevo Evento y Nueva Propuesta$/) do
  expect(page).to_not have_content('Nuevo Evento')
  expect(page).to_not have_content('Nueva Propuesta')
end

Then(/^NO deberia ver la opcion Modificar$/) do
  expect(page).to_not have_content('Modificar')
end

Then(/^deberia ver la opcion Nuevo Evento y Nueva Propuesta$/) do
  expect(page).to have_content('Nuevo Evento')
  expect(page).to have_content('Nueva Propuesta')
end

Then(/^deberia ver la opcion Modificar$/) do
   expect(page).to have_content('Modificar')
end
