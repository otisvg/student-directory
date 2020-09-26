
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "How tall are you? (cm)"
  height = gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "In which country were you born?"
  birth_country = gets.chomp
  # while the name is NOT empty, repeat this code
  while !name.empty? do
    students << {name: name, cohort: :november, height: height, age: age, birth_country: birth_country}
    puts "Now we have #{students.count} great students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end
# and then print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort). Height: #{student[:height]}, Age: #{student[:age]}, Birth Country: #{student[:birth_country]}"
  end
end
def print_footer(students)
  puts "Overall we have #{students.count} great students"
end
# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
