require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  
  it "When I visit a dish show page then I see a list of ingredients for the dish" do
    chef1 = Chef.create(name: "Garrett Gerdsen")
    ingredient1 = Ingredient.create(name: "Salt", calories: 1)
    ingredient2 = Ingredient.create(name: "Butter", calories: 190)
    ingredient3 = Ingredient.create(name: "Flour", calories: 150)
    dish1 = chef1.dishes.create(name: "Cookie", description: "Peanut Butter")
    cookie_ingredients = dish1.ingredients.create(dish: dish1.name, ingredients: [ingredient1, ingredient2, ingredient2])
binding.pry
    visit "dishes/#{dish1.id}"
    
    expect(page).to have_content("Chef Name: #{chef1.name}")
    expect(page).to have_content("#{ingredient1.name}")
    expect(page).to have_content("#{ingredient2.name}")
    expect(page).to have_content("#{ingredient3.name}")
  end
  
  # As a visitor
  # When I visit a dish's show page
  # I see a list of ingredients for that dish
  # and the chef's name
  
  it "When I visit a dish show page then I see a list of ingredients for the dish" do
    chef1 = Chef.create(name: "Garrett Gerdsen")
    ingredient1 = Ingredient.create(name: "Salt", calories: 1)
    ingredient2 = Ingredient.create(name: "Butter", calories: 190)
    ingredient3 = Ingredient.create(name: "Flour", calories: 150)
    dish1 = chef1.dishes.create(name: "Cookie", description: "Peanut Butter")
    dish1.ingredients

    visit "dishes/#{dish1.id}"
    
    expect(page).to have_content("Chef Name: #{chef1.name}")
    expect(page).to have_content("#{ingredient1.name}")
    expect(page).to have_content("#{ingredient2.name}")
    expect(page).to have_content("#{ingredient3.name}")
    expect(page).to have_content("Total Calories: ")
  end
  # As a visitor
  # When I visit a dish's show page
  # I see the total calorie count for that dish.
  
end







