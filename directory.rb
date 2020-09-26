@students = []

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
    @students << {name: name, cohort: :"#{cohort}"}
    if @students.length == 1
      puts "Now we have #{@students.count} great student"
    else
      puts "Now we have #{@students.count} great students"
    end
    # get another name from the user
    name = gets.chomp
    cohort = gets.chomp
  end
end
# and then print them
def print_header
  puts "The students of Villains Academy".center(75, " ")
  puts "-------------".center(75, " ")
end
def print_students_list
  if @students.length >= 1
    @students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(75, " ")
    end
  end
end
def print_footer
  puts "Overall we have #{@students.count} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def save_students
  # open file for writing
  file = File.open("students.csv", "w")
  #iterate over students array
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

# nothing happens until we call the methods
interactive_menu
