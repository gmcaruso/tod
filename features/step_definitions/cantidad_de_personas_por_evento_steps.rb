Given(/^fijo la cantidad de personas del evento en "(.*?)"$/) do |cupo|
  fill_in('event_amount_of_people', :with => cupo)
end
