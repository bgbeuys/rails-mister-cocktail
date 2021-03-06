# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "faker"
# Cocktail.destroy_all
# Ingredient.destroy_all

# cocktails = [

# {
#   name: Faker::Coffee.blend_name,

# }

# ]

# Cocktail.create(cocktails)

["Mojito", "Old Fashioned", "Manhattan"].each do |drink_name|
  Cocktail.create(name: drink_name)
end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Cachaça")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Batida de Coco")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Whiskey")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Sake")
Ingredient.create(name: "strawberry")


drink_dir = "app/assets/images/"


# 20.times do
#   n = [0,1,2,3].sample
#   Cloudinary::Uploader.upload("#{drink_dir}drink_#{n}.jpg")
# end
