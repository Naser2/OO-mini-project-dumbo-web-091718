class Ingredient
 attr_accessor :name

    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def self.most_common_allergen
      #count ocuurences # return the highest occurence

      group = Allergen.all.map do |allergen|
        allergen.ingredient
      end

      list = group.group_by do |allergen|
        group.count(allergen)
      end

      list.max_by do |key, value|
        key
        return value.uniq
      end

    end

end
