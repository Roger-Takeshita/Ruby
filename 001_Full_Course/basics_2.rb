# ~> Pointers
puts "================================= POINTERS"
def same_pointer thing_one, thing_two
  if thing_one == thing_two
    puts "They have the same value"
  else
    puts "They don't have the same value"
  end
  if thing_one.equal?(thing_two)
    puts "  Yes they are the same pointer, #{thing_one.object_id}"
  else
    puts "  #{thing_one} is pointer #{thing_one.object_id}"
    puts "  #{thing_two} is pointer #{thing_two.object_id}"
  end
end

string_one = "banana"
string_two = "banana"
same_pointer string_one, string_two
puts ""

symbol_one = :banana
symbol_two = :banana
same_pointer symbol_one, symbol_two
puts ""

# ~> Hash / Object / Dictionary
puts "================================= HASH"
hash = {
  "name" => "Roger",
  "age" => "33"
}

puts hash["name"]
puts hash["age"]
puts ""

hash_symbolize = {
  name: "thaisa",
  age: "32"
}
puts hash_symbolize[:name]
puts hash_symbolize[:age]
puts ""

# params[:milestones][:name]

# ~> OR Operator
puts "================================= OR OPERATOR"
fruit = "banana" || "apple"
puts fruit
puts ""

fruit_two = "banana" || "apple"

fruit = "banana"
fruit ||= "apple"

# If the variable if the condition is false, set a new value
condition = false
condition ||= "alternative"
puts condition
puts ""

# ~> If Statement
puts "================================= IF STATEMENT"
new_grocery = nil

if new_grocery
  fruit_three = "pear"
else
  fruit_three = "banana"
end

puts fruit_three
puts ""

fruit_four = "apple"
fruit_four = "mango" if new_grocery
puts fruit_four
puts ""

fruit_five = "grape"
fruit_five = !new_grocery && "kiwi"
puts fruit_five
puts ""

fruit_six = "watermelon"
is_good = fruit_six && "delicious"
puts is_good
puts ""

fruit_seven = nil
count = 5

fruit_seven = "pear"    if count == 0
fruit_seven = "apple"   if count == 1
fruit_seven = "orange"  if count == 2
fruit_seven = "grape"   if count == 3
fruit_seven ||= "watermelon"

puts fruit_seven
puts ""

meat_one = new_grocery ? "pork ribs" : "steak"
puts meat_one
puts ""

if new_grocery; fruit_nine = "pear"; else; fruit_nine = "banana"; end
puts fruit_nine
puts ""

# ~> Case Expressions (Swtich/Case)
def get_day_name day
  case day
  when "mon"
    "Monday"
  when "tue"
    "Tuesday"
  when "wed"
    "Wednesday"
  when "thu"
    "Thursday"
  when "fri"
    "Friday"
  when "sat"
    "Saturday"
  when "sun"
    "Sunday"
  else
    "Invalid abbreviation"
  end
end

today = get_day_name "wed"
puts today

def get_day_name_condensed day
  case day
  when "mon" then "Monday"
  when "tue" then "Tuesday"
  when "wed" then "Wednesday"
  when "thu" then "Thursday"
  when "fri" then "Friday"
  when "sat" then "Saturday"
  when "sun" then "Sunday"
  else "Invalid abbreviation"
  end
end

tomorrow = get_day_name_condensed "thu"
puts tomorrow
puts ""

# ~> Functions
def print_name data
  puts data[:name]
end

print_name({ name: "Yumi" })
print_name name: "Joy"
puts ""

def lets_eat kind:, time:, where:
  puts "Let's eat #{kind} at #{time}, local: #{where}"
end

lets_eat kind: "Beef", time: "5PM", where: "my home"

def lets_eat_again data
  puts "Let's eat again #{data[:kind]} at #{data[:time]}, local: #{data[:where]}"
end

lets_eat_again kind: "BBQ", time: "12PM", where: "your home"

def lets_play(data)
  puts "Let's play #{data[:kind]} at #{data[:time]}, local: #{data[:where]}"
end

lets_play({ kind: "video game", time: "8PM", where: "Thaisa's house" })
puts ""

# ~> Array
my_array = Array.new(20)
puts my_array.length
puts ""

my_array_two = []
my_array_two.push "first item"
my_array_two << "second item"
my_array_two << "third item"
puts my_array_two
puts ""

family = ['Roger', 'Thaisa' , 'Emilia', 'Yumi', 'Mike']

family.map! do |family_member|
  "#{family_member} has a cellphone"
end
puts family
puts ''

family_two = ['Ronaldo', 'Priscila', 'Kenzo', 'Joy']

family_two.map.with_index do |family_member, idx|
  puts "#{idx} - #{family_member}"
end
puts ''

numbers = [1, 2, 3]
numbers.map!{|n| n.to_s}
puts numbers
puts ''

numbers_two = [11, 12, 13]
numbers_two.map!(&:to_s)
puts numbers_two
puts ''

whole_family = [
  { name: 'Emilia' },
  { name: 'Priscila' },
  { name: 'Ronaldo' },
  { name: 'Roger' },
  { name: 'Thaisa' },
  { name: 'Joy' },
  { name: 'Mike' },
  { name: 'Yumi' }
]

whole_family.each do |member|
  puts member[:name]
end
puts ''

users_one = whole_family.map{|member| "users_one #{member[:name]}"}
puts users_one
puts ''

# users_two = whole_family.map(&:['name'])
# puts users_two
# puts ''

# ~> RegEx
fruits = "applebananaorange"
result = fruits.match("banana")
puts result

regex = Regexp.new(/banana/)
result_two = fruits.match(regex)
puts result_two

puts fruits.sub("banana", " ")
puts fruits.sub(/(banana)/, " \\1 ")
puts fruits.sub(/(banana)/, " #{$1} ")
puts ''

# ~> Class
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def return_first_name
    @first_name
  end

  def return_last_name
    @last_name
  end
end

person_one = Person.new("Roger", "Takeshita")
puts person_one.return_first_name, person_one.return_last_name

class Noise
  def self.talking
    puts "Someone is talking"
  end
end

Noise.talking

class Banana
  @@author = "Roger"      # Class variable

  def initialize
    @kind = "Lady Finger" # Instance Variable
  end

  def kind
    @kind
  end

  def self.author
    @@author
  end

  def self.author= new_name
    @@author = new_name
  end
end

# puts Banana.author
# banana_new = Banana.new
# puts banana_new.kind

puts Banana.author
Banana.author = "Thaisa"
puts Banana.author

class BananaTwo
  attr_accessor :author

  def initialize
    @author = "Mike" # Instance variable
  end
end

banana_two = BananaTwo.new
puts banana_two.author
banana_two.author = "Cabecinha"
puts banana_two.author

puts BananaTwo.new
puts BananaTwo.new.inspect

# ~> Module
module Moveable
  def running
    "I'm running"
  end

  def walking
    "I'm walking"
  end

  def jogging
    "I'm jogging"
  end
end

class PersonTwo
  include Moveable
end

person_two = PersonTwo.new
puts person_two.running
puts person_two.walking
puts person_two.jogging
