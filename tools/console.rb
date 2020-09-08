# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

sean = Restaurant_owner.new("Sean", 45)
ben = Restaurant_owner.new("Ben", 33)
stacy = Restaurant_owner.new("Stacy", 28)

cheesecake_factory = Restaurant.new(sean, "Cheesecake Factory", 5)
ristegios = Restaurant.new(stacy, "Ristegios", 4)
mcdonalds = Restaurant.new(ben, "McDonalds", 2)
schafers = Restaurant.new(sean, "Schafers", 4)

chicken = Recipe.new("Chicken Madiera", "Our most popular dish!")
steak = Recipe.new("Steak Diane", "A very tasty steak")
brgr = Recipe.new("Big Mac", "Ba da ba ba bah")
parm = Recipe.new("Chicken Parm", "The Dane Cook of Italian dishes")
egg = Recipe.new("Egg McMuffin", "Breakfast of champions")
fry = Recipe.new("French Fries", "The perfect side, but not really French")
salad = Recipe.new("Salad", "Greens")

chix_mad = MenuItem.new(cheesecake_factory, chicken, 32.25)
diane = MenuItem.new(cheesecake_factory, steak, 40.15)
big_mac = MenuItem.new(mcdonalds, brgr, 5.95)
chx_parm = MenuItem.new(ristegios, parm, 24.50)
chx_parm = MenuItem.new(cheesecake_factory, parm, 28.75)
egg_mcmuffin = MenuItem.new(mcdonalds, egg, 4.80)
fries = MenuItem.new(cheesecake_factory, fry, 5.67)
fries = MenuItem.new(mcdonalds, fry, 3.99)
fries = MenuItem.new(ristegios, fry, 4.89)
fries = MenuItem.new(schafers, fry, 4.29)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
