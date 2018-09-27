class User

attr_accessor :recipes, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @recipes = []
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date=nil, rating=nil)
    new_hash = {
      date: date,
      rating: rating,
      user: self,
      recipe: recipe
    }
    RecipeCard.new(new_hash)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

end
