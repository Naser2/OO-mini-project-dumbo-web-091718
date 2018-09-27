class RecipeCard

  attr_accessor :date, :rating, :user, :recipe
   @@all = []

    def initialize(recipe_store)
       if self.respond_to?("#{key}=")
          self.send("#{key}=", value)
       end

      @@all << self
    end

    def self.all
      @@all
    end



end
