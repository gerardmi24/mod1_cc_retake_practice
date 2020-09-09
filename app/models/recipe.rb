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
        Menu_item.all.select {|item| item.recipe == self}
    end

    def restaurants
        self.menu_items.map {|item| item.restaurant}
    end

    def average_price
        self.menu_items.collect {|item| item.price}.sum / self.menu_items.length
        #self.menu_items.map {|mnu_itm| mnu_itm.price}.sum / menu_items.length
    end

    def highest_price
        self.menu_items.collect{|item| item.price}.max
        #self.menu_items.max_by {|menu_item| menu_item.price}
    end

    def cheapest_restaurant
        self.menu_items.min_by {|item| item.price}.restaurant  
    end

    def self.inactive
        recipe = self.all.select {|item| item.restaurants == []}
    end
    
end
