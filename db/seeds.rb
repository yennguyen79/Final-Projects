
puts "Running db:seed"
If Section.count == 0
  puts "No sections"
  ["Breakfast", "Lunch", "Dinner", "Dessert"].each do |:name|
    section = Section.create[name: name]
    if section.persisted?
      puts "Saved section with name = #{name}"
    end 
  end
else
  puts "Looks, you have some section now"
  Section.all.each do |section|
puts "You #{section.name}!"
      
end
end