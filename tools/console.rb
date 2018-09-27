require_relative '../config/environment.rb'

tom = User.new("Tom")
jerry = User.new("Jerry")

strawberryshortcake = Recipe.new("Strawberry Shortcake")
pudding = Recipe.new("Chocolate Pudding")
cookie = Recipe.new("Cookie")
bananapudding = Recipe.new("Banana Pudding")

flour = Ingredient.new("Flour")
egg = Ingredient.new("Egg")
chocolate = Ingredient.new("Chocolate")
sugar = Ingredient.new("Sugar")
strawberry = Ingredient.new("Strawberry")
peanutButter = Ingredient.new("peanutButter")
hotPepper = Ingredient.new("hotPepper")
milk = Ingredient.new("milk")
banana = Ingredient.new("banana")

strawberryshortcake.add_ingredients([strawberry, flour, sugar])
pudding.add_ingredients([chocolate, egg, flour])
bananapudding.add_ingredients([banana, egg, flour])
cookie.add_ingredients([milk, egg, flour])

jerry.add_recipe_card(strawberryshortcake)
jerry.add_recipe_card(pudding, "Monday, September 11th", 4)
tom.add_recipe_card(pudding, "Tommorrow", 10)
jerry.add_recipe_card(pudding, "Tommorrow", 5)
tom.add_recipe_card(pudding, "Tommorrow", 1)
tom.add_recipe_card(pudding, "Tommorrow", 7)
tom.add_recipe_card(pudding, "Tommorrow", 5)
tom.add_recipe_card(pudding, "Tommorrow", 9)
tom.add_recipe_card(pudding, "Tommorrow", 3)
tom.add_recipe_card(pudding, "Tommorrow", 6)
jerry.add_recipe_card(bananapudding, "Tommorrow", 6)
jerry.add_recipe_card(cookie, "Tommorrow", 2)
jerry.add_recipe_card(cookie, "Monday, September 11th", 4)
jerry.add_recipe_card(strawberryshortcake, "Monday, September 11th", 4)
tom.add_recipe_card(strawberryshortcake, "Monday, September 11th", 4)


jerry.declare_allergen(strawberry)
tom.declare_allergen(hotPepper)
tom.declare_allergen(peanutButter)
tom.declare_allergen(strawberry)



binding.pry
