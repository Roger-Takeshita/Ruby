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