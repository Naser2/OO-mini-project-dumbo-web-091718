class RecipeCard

  attr_accessor :date, :rating, :user, :recipe
   @@all = []

    def initialize(recipe_store)
      recipe_store.each do |key, value|
       if self.respond_to?("#{key}=")
          self.send("#{key}=", value)
       end
     end
      @@all << self
    end

    def self.all
      @@all
    end



end
