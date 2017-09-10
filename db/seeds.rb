
# puts "Running db:seed"
# If Section.count == 0
#   puts "No sections"
#   ["Breakfast", "Lunch", "Dinner", "Dessert"].each do |name|
#     section = Section.create[name: name]
#     if section.persisted?
#       puts "Saved section with name = #{name}"
#     end 
#   else
#   puts "Looks, you have some section now"
#   Section.all.each do |section|
# puts "You #{section.name}!"   
#   end 
# end
# end

sections = Section.all
20.times do
  FoodItem.create(
    name: Faker::Food.dish,
    section: sections.sample,
    price: rand(10..200) * 10000 # price is between 10,000 VND and 200,000 VND
  )
end