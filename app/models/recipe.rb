#class Recipe

#    attr_reader :name
#    attr_accessor :description
#    @@all = []

#    def initialize(name, description)
#        @name = name #string
#        @description = description #string
#        @@all << self
#    end

#    def self.all
#        @@all
#    end

#    def menu_items
#        Menu_item.all.select {|menu_item| self == menu_item.recipe}
#    end

#    def restaurants
#        self.menu_items.map {|menu_item| menu_item.restaurant}
#    end 

#    def average_price
#        self.menu_items.map {|mnu_itm| mnu_itm.price}.sum / menu_items.length
#    end

#    def highest_price
#        self.menu_items.max_by {|menu_item| menu_item.price}
#    end

#    def cheapest_restaurant
#        self.menu_items.min_by {|m_item| m_item.price}.restaurant
#    end

#    def self.inactive
#        self.all.select {|rec| rec.restaurants == nil}
        #I tried testing but am not sure how to make this work. I am getting 
        #an empty array back, when the array should include the recipe salad.
#    end

#end
class Recipe
 
    attr_reader :name
    attr_accessor :description

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select { |item| item.recipe == self }
    end

    def restaurants
        self.menu_items.map { |item| item.restaurant }
    end

    def average_price
        self.menu_items.collect { |item| item.price }.sum / self.menu_items.length
    end

    def highest_price
        self.menu_items.collect{ |item| item.price }.max
    end

    def cheapest_restaurant
        self.menu_items.min_by { |item| item.price }.restaurant  
    end

    def self.inactive
        recipe = self.all.select { |item| item.restaurants == [] }

        # if MenuItem.all.select { |item| item.recipe != self }
        #    menu_item.reci
        # else
        #     "Can be found at "
        # end
        # Recipe.include? 
        # MenuItem.all.map(Recipe).include?
        # { |item| item.recipe != self }
    end
end
