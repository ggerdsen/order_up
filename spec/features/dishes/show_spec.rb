require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  
  it "When I visit a dish show page then I see a list of ingredients for the dish" do
    chef1 = Chef.create(name: "Garrett Gerdsen")
    ingredient1 = Ingredient.create(name: "Salt", calories: 1)
    ingredient2 = Ingredient.create(name: "Butter", calories: 190)
    ingredient3 = Ingredient.create(name: "Flour", calories: 150)
    dish1 = chef1.dishes.create(name: "Cookie", description: "Peanut Butter")
    dish1.ingredients << ingredient1
    dish1.ingredients << ingredient2
    dish1.ingredients << ingredient3

    visit "dishes/#{dish1.id}"
    
    expect(page).to have_content("Chef Name: #{chef1.name}")
    expect(page).to have_content("#{ingredient1.name}")
    expect(page).to have_content("#{ingredient2.name}")
  end
end


# As a visitor
# When I visit a dish's show page
# I see a list of ingredients for that dish
# and the chef's name




# Story 2 of 3
# As a visitor
# When I visit a dish's show page
# I see the total calorie count for that dish.