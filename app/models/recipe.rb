class Recipe < ApplicationRecord
    enum dish_type: { main: 0, dessert: 1, drink: 2 }
end
