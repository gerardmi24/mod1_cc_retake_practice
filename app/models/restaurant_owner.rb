#class Restaurant_owner

#    attr_accessor :name, :age
 #   @@all = []

  #  def initialize(name, age)
   #     @name = name #string
#        @age = age #integer
 #       @@all << self
  #  end

   # def self.all
#        @@all
#    end

#    def restaurants
        #returns an array of Restaurant instances associated with the RestaurantOwner instance.
 #       Restaurant.all.select {|restaurant| restaurant.owner == self}
  #  end

   # def menu_items
        #returns an array of MenuItem instances associated with any of the RestaurantOwners Restaurant instances.
#        self.restaurants.map {|rest| rest.menu_items}
#    end

#    def self.average_age
#        self.all.collect{|own| own.age}.sum / self
#    end

 #   def sell_restaurant(restaurant, buyer)
  #      if restaurant.owner == self
   #         restaurant.owner = buyer
    #    else
  #          "I am not the owner"
  #      end
  #  end

#end

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
        Restaurant.all.select { |rest| rest.owner == self }
    end

    def menu_items
        MenuItem.all.select { |item| item.restaurant.owner == self }
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