Given(/^voy a la vista CREATE_USER$/) do
  visit '/user/new'
end

Given(/^seteo el usuario en "(.*?)"$/) do |usuario|
  fill_in('user', :with => usuario)
end

Given(/^seteo el password en "(.*?)"$/) do |password|
  fill_in('password', :with => password)
end

Given(/^seteo el rol en "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^se debe ver el usuario "(.*?)" y su perfil "(.*?)" en la pantalla$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
