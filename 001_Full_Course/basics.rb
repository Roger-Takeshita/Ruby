# = Print/Puts
puts "Roger"
print "Takeshita"
puts ""
puts ""
puts "Roger"
print "Takeshita"
puts ""
puts ""

# = Variables
name = "Roger"
age = "33"
puts "Hi my name is #{name}"
puts ("I'm " + age + " years old")

# = Data Types
# _  String
name = "Roger"
name = "      Roger Takeshita      "
puts name.strip()

name2 = "Roger \n Takeshita"
puts name2
name = "Roger Takeshita"
puts name.downcase()
puts name.upcase()
puts name.length()
puts name.include? "Ro"

# _ Number (Integer)
age = 33
temperature = -3
puts "I'm #{age.to_s} years old"
puts 10 / 7

# _ Number (Floating)
dollar = 4.20
puts 10 / 7.0

# _ Boolean
flag = false
open = true

# _ null
null_value = nil

# _ Array
friends = Array["Thaisa", "Yumi", "Mike"]
puts friends
puts friends[1]
puts friends[-1]
puts friends[0,1]

puts friends.length()
puts friends.include? "Yumi"
puts friends.reverse()
puts friends.sort()

# _ Hash / Object / Dictonary
states = {
  "Pennsylvania" => "PA",
  "New York" => "NY",
  "Oregon" => "OR"
}

puts states
puts states["New York"]

statesBrazil = {
  :Paraná => "PR",
  :"São Paulo" => "SP",
  :"Mato Grosso" => "MG"
}

puts statesBrazil[:Paraná]
puts statesBrazil[:"São Paulo"]

contact = {
  1 => "Roger Takeshita",
  2 => "Thaisa Sakima",
  3 => "Yumi Sakima"
}

puts contact[1]
puts contact[2]
puts contact[3]

# = Methods

def putsHi
  puts "Hi there"
end

putsHi()

def putsHiToUser(user, age=10)
  puts "Hi #{user} #{age.to_s}"
end

putsHiToUser("Roger")

def returnString(name="Guest")
  "Hi #{name}"
end

puts returnString("Yumi")

def cube(num)
  return num * num * num, "Cube Volume"
end

data = cube(3)
puts data[0]
puts data[1]

# = If Statement
isMale = true
isTall = false

if isMale and isTall
  puts "You are a male and tall"
elsif isMale and !isTall
  puts "Your are male but not tall"
else
  puts "You're not a male"
end

# = While Statement
counter = 0
while counter < 5
  puts counter
  counter += 1
end

# = For Statement
friends1 = ["Thaisa", "Yumi", "Mike", "Joy"]

for friend in friends1
  puts friend
end

friends1.each do |variable|
  puts variable
end

for idx in 0..5
  puts idx
end

6.times do |idx|
  puts idx
end


# = Case Expressions (Switch/Cases)

def get_day_name(day)
  day_name = ''

  case day
  when "mon"
    day_name = "Monday"
  when "tue"
    day_name = "Tuesday"
  when "wed"
    day_name = "Wednesday"
  when "Thu"
    day_name = "Thursday"
  when "Fri"
    day_name = "Friday"
  when "sat"
    day_name = "Saturday"
  when "sun"
    day_name = "Sunday"
  else
    return "Invalid abbreviation"
  end

  return day_name
end

puts get_day_name("mon")
puts get_day_name("Hi")

# = External file

File.open("external_file.txt", "r") do |file|
  # + Read the entire file
  # puts file.read().include? "Jim"
  # + Read one line
  # puts file.readline()
  # + Read one character
  # puts file.readchar()
  # + Read all lines, readlines() returns an array with all line
  for line in file.readlines()
    puts line
  end
end

openedFile = File.open("external_file.txt", "r");

puts openedFile.read()

openedFile.close()

# = Handling Errors


begin
  num = 10 / 0
rescue ZeroDivisionError
  puts "You cannot devide a number by zero"
end

begin
  lucky_num = [1, 2, 3, 4, 5, 6, 7]
  puts lucky_num["dog"]
rescue TypeError => error
  puts "Wrong format type, #{error}"
end

# = Class
class Book
  attr_accessor :title, :author, :pages
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 400

puts book1.title

book2 = Book.new()
book2.title = "Lord of the Rings"
book2.author = "Tolkein"
book2.pages = 500

puts book2.author

# _ Initializer Methods (Constructors)

class Book2
  attr_accessor :title, :author, :pages
  def initialize(title, author, pages)
    puts "Creating Book"
    @title = title;
    @author = author;
    @pages = pages;
  end
end

book3 = Book2.new("Harry Potter", "JK Rowling", 400)

puts book3.title

book4 = Book2.new("Lord of the Rings", "Tolkein", 500)

puts book4.author

# _ Object Methods / Instance Methods

class Student
  attr_accessor :name, :major, :gpa
  def initialize (name, major, gpa)
    @name = name;
    @major = major;
    @gpa = gpa;
  end

  def has_honors
    if @gpa >= 3.5
      return true
    end

    return false
  end

end

student1 = Student.new('Jim', "Business", 2.6)
student2 = Student.new('Pam', "Art", 3.6)

puts student1.has_honors()
puts student2.has_honors()

# _ Inheritance
class Chef
  def make_chicken
    puts "The chef makes chicken"
  end
  def make_salad
    puts "The chef makes salad"
  end
  def make_special_dish
    puts "The chef makes bbq ribs"
  end
end

class ItalianChef < Chef
  def make_special_dish
    puts "The chef makes eggplant parm"
  end
  def make_pasta
    puts "The chef makes pasta"
  end
end

chef1 = Chef.new()
chef1.make_chicken()
chef1.make_special_dish()
chef2 = ItalianChef.new()
chef2.make_salad()
chef2.make_special_dish()
chef2.make_pasta()

# = Modules
require_relative "module_tools.rb"
include Tools
Tools.say_hi("Roger")
Tools.say_bye("Roger")