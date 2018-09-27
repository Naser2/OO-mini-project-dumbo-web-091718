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
  end

end
