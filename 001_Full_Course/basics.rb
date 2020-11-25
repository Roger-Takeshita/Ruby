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
puts name.index("T")

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
