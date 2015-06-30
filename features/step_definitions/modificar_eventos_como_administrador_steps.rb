Then(/^veo el boton "(.*?)"$/) do |boton|
  expect(page).to have_content(boton)
end

