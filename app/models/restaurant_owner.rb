class Restaurant_owner

    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select {|restrnt| restrnt.owner == self}
    end

    def menu_items
        Menu_item.all.select {|item| item.restaurant.owner == self}
        #self.restaurants.map {|rest| rest.menu_items}
    end

    def self.average_age
        self.all.collect{ |ownr| ownr.age }.sum / self.all.length
    end

    def sell_restaurant(restaurant, buyer) 
        if restaurant.owner == self
            restaurant.owner = buyer
        else 
            "Im not the owner!"
        end
    end  

end