#class Menu_item

#    attr_accessor :price
#    attr_reader :restaurant, :recipe
#    @@all = []

#    def initialize(restaurant, recipe, price)
#        @restaurant = restaurant
#        @recipe = recipe
#        @price = price #float
#        @@all << self
#    end

#    def self.all
#        @@all
#    end

    #def recipe - returns the Recipe instance associated with the MenuItem instance
    #done in initialize

    #def restaurant - returns the Restaurant instance associated with the MenuItem instance
    #done in initialize

#    def owner
        #returns the Owner instance associated with the MenuItem instance
#        self.restaurant.owner
#    end

#    def self.most_expensive_item
#        self.all.max_by {|menu_it| menu_it.price}
#    end

#end

class MenuItem

    attr_accessor :price
    attr_reader :restaurant, :recipe

    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def owner
        self.restaurant.owner
    end

    def self.most_expensive_item
        self.all.max_by { |item| item.price }
    end


end