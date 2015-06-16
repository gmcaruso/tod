Given(/^seteo el cupo maximo en "(.*?)"$/) do |cantidad|
  fill_in('event_max_amount_of_people', :with => cantidad)
end

Then(/^se debe ver en la lista de eventos el cupo maximo cambiado en "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end