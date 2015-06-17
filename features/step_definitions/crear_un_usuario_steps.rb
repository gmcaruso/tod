Given(/^voy a la vista CREATE_USER$/) do
  visit '/user/new'
end

Given(/^seteo el usuario en "(.*?)"$/) do |usuario|
  fill_in('user', :with => usuario)
end

Given(/^seteo el password en "(.*?)"$/) do |password|
  fill_in('password', :with => password)
end

=begin
Given(/^seteo el rol en Administrador$/) do
  check('role')
end

Given(/^seteo el rol en Usuario$/) do
  uncheck('role')
end
=end

Given(/^seteo el rol en "(.*?)"$/) do |rol|
  fill_in('role', :with => rol)
end


Given(/^voy a la vista LOG IN$/) do
  visit '/login'
end

Given(/^cliqueo en el boton Log in$/) do
  click_button('Log in')
end

Then(/^se debe ver el usuario "(.*?)" y su perfil "(.*?)" en la pantalla$/) do |usuario, rol|
  expect(page.has_content? 'Conectado como: '+usuario+' Rol: '+ rol)
end
