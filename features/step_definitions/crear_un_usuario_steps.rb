# encoding: UTF-8
Given(/^voy a la vista CREATE_USER$/) do
  visit '/user/new'
end

Given(/^seteo el email en "(.*?)"$/) do |email|
  fill_in('email', :with => email)
end

Given(/^seteo el usuario en "(.*?)"$/) do |usuario|
  fill_in('name', :with => usuario)
end

Given(/^seteo el password en "(.*?)"$/) do |password|
  fill_in('password', :with => password)
end

Given(/^seteo el rol en "(.*?)"$/) do |rol|
  select(rol, :from => 'role')
end

Given(/^voy a la vista LOG IN$/) do
  visit '/login'
end

Given(/^cliqueo en el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^se debe ver el usuario "(.*?)" y su perfil "(.*?)" en la pantalla$/) do |usuario, rol|
  mensaje= 'Conectado como: '+usuario+' Rol: '+ rol
  expect(page).to have_content mensaje
end

Then(/^se debe ver el usuario Usuario conectado con el rol Usuario$/) do
  expect(page).to have_content 'Conectado como: Usuario Rol: Usuario'
end


