
class Recipe

 attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
     RecipeIngredient.new(ingredient, self)
    end
  end

  def self.most_popular
    recipe = RecipeCard.all.map do |card|  #iterate through card
             card.recipe   #count each recipe
             end
   popular = recipe.group_by do |top_1|  # find highest key
             recipe.count(top_1)
             end
    popular.max_by do |key, value|  # find highest key
            key
            # binding.pry
       return value.uniq #return value of highest key (using uniq to get id of duplicates)
     end
  end

  def contains_recipe
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end


  def users
    self.contains_recipe.map do |card|
      card.user
    end
  end

  def ingredients
    #Recipe AND their ingredients
    ingred_of_recipe = RecipeIngredient.all.select do |ingredient|
      ingredient.recipe == self
    end
    # Ingredients of recipe
    ingred_of_recipe.map do |recipepart|
      recipepart.ingredient
    end
  end

  def allergens
    array = []
      self.ingredients.each do |ingred|
          Allergen.all.each do |aller|
            if aller.ingredient == ingred
              array << ingred
            end
          end
      end
    array
  end


end
