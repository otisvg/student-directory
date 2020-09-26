
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "Please enter the name of the students cohort"
  cohort = gets.chomp
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
    name = gets.chomp
    cohort = gets.chomp
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
  if students.length >= 1
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(75, " ")
    end
  end
end
def print_footer(students)
  puts "Overall we have #{students.count} great students"
end

def interactive_menu
  students = []
  loop do
    #1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you meant, please try again"
    end
  end
end

# nothing happens until we call the methods
interactive_menu
