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

  def top_three_recipes # each recipe on card
    card = RecipeCard.all.map do |card|
       card.recipe
     end
    recipe_groups = card.group_by do |recipe|
      card.count(recipe)  #grouped by count of recipe
    end
    count = recipe_groups.sort.reverse
    return [count[0][1].uniq, count[1][1].uniq, count[2][1].uniq]
  end

end
