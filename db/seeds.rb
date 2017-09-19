100.times do
  MenuItem.create(
    name: Faker::Food.dish,
    description: Faker::Food.ingredient + ' ' + Faker::Food.ingredient + ' ' + Faker::Food.spice,
    category: Faker::Demographic.demonym,
    price: Faker::Commerce.price.to_f
  )
end

puts "Menu Items seeded."


# description = []

# 10.times do 
# 	ingredient_1 = Faker::Food.ingredient
# 	ingredient_2 = Faker::Food.ingredient
# 	ingredient_3 = Faker::Food.ingredient
# 	spice = Faker::Food.spice
# end

# mix = ['With hearty ' + ingredient_1 + ' and ' + ingredient_2 +
# 				' combined with ' + ingredient_3 + ', you get a combination like no other.
# 				We top it off with ' + spice + '.']

# 10.times do
# 	description.push(mix)
# end

# puts description