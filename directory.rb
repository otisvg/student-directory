
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chop
  puts "Please enter the name of the students cohort"
  cohort = gets.chop
  # while the name is NOT empty, repeat this code
  if cohort.empty?
    cohort = "november"
  end
  while !name.empty? && !cohort.empty? do
    students << {name: name, cohort: :"#{cohort}"}
    if students.length == 1
      puts "Now we have #{students.count} great student"
    else
      puts "Now we have #{students.count} great students"
    end
    # get another name from the user
    name = gets.chop
    cohort = gets.chop
  end
  # return the array of students
  students
end
# and then print them
def print_header
  puts "The students of Villains Academy".center(75, " ")
  puts "-------------".center(75, " ")
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(75, " ")
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
