<h1 id='contents'>Table of Contents</h1>

- [RUBY PROGRAMMING LANGUAGE - FULL COURSE](#ruby-programming-language---full-course)
  - [Links](#links)
  - [Basics](#basics)
    - [Print/Puts](#printputs)
    - [Variables](#variables)
    - [Symbols](#symbols)
    - [Data Types](#data-types)
      - [String](#string)
      - [Number (Integer)](#number-integer)
      - [Number (Float)](#number-float)
      - [Boolean](#boolean)
      - [Null](#null)
      - [Array](#array)
        - [DEFINED SIZE](#defined-size)
        - [PUSH](#push)
      - [Hash/Object/Dictionary](#hashobjectdictionary)
        - [HASHROCKET =>](#hashrocket-)
    - [Methods](#methods)
    - [Operators](#operators)
      - [Or Operator](#or-operator)
      - [Tilde Operator (~) - RegEx](#tilde-operator----regex)
    - [Loops](#loops)
      - [If Statement](#if-statement)
        - [TERNARY OPERATOR](#ternary-operator)
        - [IF STATEMENT SINGLE LINE](#if-statement-single-line)
      - [For Statement](#for-statement)
      - [While Statement](#while-statement)
    - [Case Expressions (Switch/Cases)](#case-expressions-switchcases)
      - [Assigning Result](#assigning-result)
      - [Condensed Case Expression](#condensed-case-expression)
    - [External File](#external-file)
    - [Handling Errors](#handling-errors)
    - [Class](#class)
      - [Initializer Methods (Constructors)](#initializer-methods-constructors)
      - [Object Methods / Instance Methods](#object-methods--instance-methods)
      - [Getters / Setters](#getters--setters)
        - [ATTRIBUTES](#attributes)
      - [Inheritance](#inheritance)
      - [Class Methods](#class-methods)
      - [Instance Methods](#instance-methods)
    - [Modules](#modules)
    - [Functions](#functions)
      - [Explicit Define The Arguments (Hash)](#explicit-define-the-arguments-hash)

# RUBY PROGRAMMING LANGUAGE - FULL COURSE

## Links

- [Ruby Programming Language - Full Course (freeCodeCamp)](https://www.youtube.com/watch?v=t_ispmWmdjY)

## Basics

### Print/Puts

[Go Back to Contents](#contents)

- The difference between `print` and `puts` is that `puts` after printing the value, adds a new line after
- And `print` doesn't add a new line

  ```Ruby
    puts 'Roger'
    print 'Takeshita'
    # Roger
    # Takeshita

    print 'Takeshita'
    puts 'Roger'
    # TakeshitaRoger
  ```

### Variables

[Go Back to Contents](#contents)

```Ruby
  name = 'Roger'
  age = '33'
  puts "Hi my name is #{name}"
  puts "I'm #{age} years old"
  # Hi my name is Roger
  # I'm 33 years old
```

### Symbols

[Go Back to Contents](#contents)

- A symbol looks like a variable name but it's prefixed with a colon. Examples - `:action`, `:line_items`. You don't have to pre-declare a symbol and they are guaranteed to be unique. There's no need to assign some kind of value to a symbol - Ruby takes care of that for you. Ruby also guarantees that no matter where it appears in your program, a particular symbol will have the same value.
- Alternatively, you can consider the colon to mean "thing named" so `:id` is "the thing named id." You can also think of `:id` as meaning the name of the variable id, and plain id as meaning the value of the variable.

  ```Ruby
    puts "string".object_id
    puts "string".object_id
    puts :symbol.object_id
    puts :symbol.object_id
    # 60
    # 80
    # 907548
    # 907548
  ```

  ```Ruby
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

    string_one = 'banana'
    string_two = "banana"
    same_pointer string_one, string_two
    puts ""

    symbol_one = :banana
    symbol_two = :banana
    same_pointer symbol_one, symbol_two
    puts ""

    # They have the same value
    #   banana is pointer 60
    #   banana is pointer 80

    # They have the same value
    #   Yes they are the same pointer, 1030108
  ```

### Data Types

[Go Back to Contents](#contents)

- In Ruby we have the following **data types**

#### String

[Go Back to Contents](#contents)

```Ruby
  name = 'Roger'
```

- Number To String

  ```Ruby
    age = 33
    string_age = age.to_s
    puts "I'm #{string_age} years old"
    # I'm 33 years old
  ```

- Break line

  ```Ruby
    name = "Roger \n Takeshita"
    print name
    # Roger
    #  Takeshita
  ```

- Trim empty spaces

  ```Ruby
    name = '      Roger Takeshita      '
    puts name.strip
    # Roger Takeshita
  ```

- Lower case

  ```Ruby
    name = 'Roger Takeshita'
    puts name.downcase
    # roger takeshita
  ```

- Upper case

  ```Ruby
    name = 'Roger Takeshita'
    puts name.upcase
    # ROGER TAKESHITA
  ```

- Length()

  ```Ruby
    name = 'Roger Takeshita'
    puts name.length
    # 15
  ```

- Include?

  ```Ruby
    name = 'Roger Takeshita'
    puts name.include? 'Ro'
    # true
  ```

- Index()

  ```Ruby
    name = 'Roger Takeshita'
    puts name.index('T')
    # 6
  ```

#### Number (Integer)

[Go Back to Contents](#contents)

```Ruby
  age = 33
  temperature = -3
```

- String to integer

  ```Ruby
    num1 = '1'
    num2 = '2'
    puts num1.to_i + num2.to_i
    # 3
  ```

- Return integer

  ```Ruby
    puts 10 / 7
    # 1
  ```

#### Number (Float)

[Go Back to Contents](#contents)

```Ruby
  dollar = 4.20
```

- String to float

  ```Ruby
    num1 = '1'
    num2 = '2.5'
    puts num1.to_i + num2.to_f
    # 3.5
  ```

- Return long format

  ```Ruby
    puts 10 / 7.0
    # 1.428571
  ```

#### Boolean

[Go Back to Contents](#contents)

```Ruby
  flag = false
  open = true
```

#### Null

[Go Back to Contents](#contents)

```Ruby
  null_value = nil
```

#### Array

[Go Back to Contents](#contents)

```Ruby
  friends = Array["Thaisa", "Yumi", "Mike"]
  puts friends
  # Thaisa
  # Yumi
  # Mike
```

- Index

  ```Ruby
    puts friends[1]
    # Yumi
    puts friends[-1]
    # Mike
  ```

- Range of index

  ```Ruby
    puts friends[0,1]
    # Mike
    # Thaisa
  ```

- Length()

  ```Ruby
    puts friends.length
    # 3
  ```

- Include?

  ```Ruby
    puts friends.include? "Yumi"
    # true
  ```

- Reverse()

  ```Ruby
    puts friends.reverse
    # Mike
    # Yumi
    # Thaisa
  ```

- Sort()

  ```Ruby
    puts friends.sort
    # Mike
    # Thaisa
    # Yumi
  ```

##### DEFINED SIZE

[Go Back to Contents](#contents)

```Ruby
  my_array = Array.new(20)
  puts my_array.length
  # 20
```

##### PUSH

[Go Back to Contents](#contents)

```Ruby
  my_array_two = []
  my_array_two.push "first item"
  puts my_array_two
  # first item
  puts my_array_two[0]
  # first item
```

- Another option is to use the `<<` operator

  ```Ruby
    my_array_two = []
    my_array_two.push "first item"
    my_array_two << "second item"
    my_array_two << "third item"
    puts my_array_two

    # first item
    # second item
    # third item
  ```

#### Hash/Object/Dictionary

[Go Back to Contents](#contents)

```Ruby
  states = {
    "Pennsylvania" => "PA",
    "New York" => "NY",
    "Oregon" => "OR"
  }

  puts states
  # {"Pennsylvania"=>"PA", "New York"=>"NY", "Oregon"=>"OR"}
  puts states["New York"]
  # NY
```

```Ruby
  contact = {
    1 => 'Roger Takeshita',
    2 => 'Thaisa Sakima',
    3 => 'Yumi Sakima'
  }

  puts contact[1]
  puts contact[2]
  puts contact[3]

  # Roger Takeshita
  # Thaisa Sakima
  # Yumi Sakima
```

##### HASHROCKET =>

[Go Back to Contents](#contents)

- Normal hash using **string**

  ```Ruby
    hash = {
      "name" => "Roger",
      "age" => "33"
    }

    puts hash["name"]
    puts hash["age"]
    # Roger
    # 33
  ```

- Hash using **symbol**

  ```Ruby
    hash_symbolize = {
      name: "thaisa",
      age: "32"
    }
    puts hash_symbolize[:name]
    puts hash_symbolize[:age]
    # Thaisa
    # 32
  ```

- Accessing incoming params

  ```Ruby
    params[:milestones][:name]
  ```

### Methods

[Go Back to Contents](#contents)

```Ruby
  def puts_hi
    puts 'Hi there'
  end

  puts_hi
```

- Parameters

  ```Ruby
    def putsHiToUser(user, age)
      string_age = age.to_s
      puts "Hi #{user} #{string_age}"
    end

    putsHiToUser('Roger', 33)
    # Hi Roger 33
  ```

- Default parameters

  ```Ruby
    def puts_hi_to_user(user, age = 10)
      string_age = age.to_s
      puts "Hi #{user} #{string_age}"
    end

    puts_hi_to_user('Roger')
    # Hi Roger 10
  ```

- Return Statement

  - By default ruby returns the last line of the code

  ```Ruby
    def return_string(name = 'Guest')
      "Hi #{name}"
    end

    puts return_string('Yumi')
    # Hi Yumi
  ```

  - We can force the return value, by defining **return** keyword
  - Just like in JS, nothing after the return will be executed
  - If we add a comma in the return value, ruby will return an array

    ```Ruby
      def cube(num)
        [num * num * num, 'Cube Volume']
      end

      data = cube(3)
      puts data[0]
      # 27
      puts data[1]
      # Cube Volume
    ```

### Operators

[Go Back to Contents](#contents)

- **and** / **&&**
- **or** / **||**
- comparison
  - **==**
  - **!=**
  - **>=**
  - **<=**

#### Or Operator

[Go Back to Contents](#contents)

```Ruby
  fruit = "banana" || "apple"
  puts fruit
  # banana
```

- These statements are the same

  ```Ruby
    fruit_two = "banana" || "apple"

    fruit = "banana"
    fruit ||= "apple" # <---- less code
  ```

  ```Ruby
    condition = false

    ...
    # condition defined a long time ago
    ...

    # we can now check using the shorthand
    condition ||= "alternative"
    puts condition
    # alternative
  ```

#### Tilde Operator (~) - RegEx

[Go Back to Contents](#contents)

- The `tilde` operator is used to define regular expression

  ```Ruby
    fruits = "applebananaorange"
    result = fruits.match("banana")
    puts result
    # banana

    fruits = "applebananaorange"
    result = fruits.match("Banana")
    puts result
    #

    regex = Regexp.new /banana/
    result_two = fruits.match(regex)
    puts result_two
    # banana

    puts fruits.sub("banana", " ")
    # apple orange
  ```

- Replacing using regex

  ```Ruby
    puts fruits.sub(/(banana)/, " \\1 ")
    puts fruits.sub(/(banana)/, " #{$1} ")
    # apple banana orange
    # apple banana orange
  ```

### Loops

#### If Statement

[Go Back to Contents](#contents)

```Ruby
  is_male = true
  is_tall = false

  if is_male && is_tall
    puts 'You are a male and tall'
  elsif is_male && !is_tall
    puts 'Your are male but not tall'
  else
    puts "You're not a male"
  end

  # You are male but not tall
```

- Not very good

  ```Ruby
    new_grocery = nil

    if new_grocery
      fruit_three = "pear"
    else
      fruit_three = "banana"
    end

    puts fruit_three
    # banana
  ```

- Better implementation

  ```Ruby
    fruit_four = "apple"
    fruit_four = "mango" if new_grocery
    puts fruit_four
    # apple

    fruit_five = "grape"
    fruit_five = !new_grocery && "kiwi"
    puts fruit_five
    # kiwi

    fruit_six = "watermelon"
    is_good = fruit_six && "delicious"
    puts is_good
    # delicious
  ```

- We can also check a bunch of things before doing the last check (almost like a switch/case)

  ```Ruby
    fruit_seven = nil
    count = 5

    fruit_seven = "pear"    if count == 0
    fruit_seven = "apple"   if count == 1
    fruit_seven = "orange"  if count == 2
    fruit_seven = "grape"   if count == 3
    fruit_seven ||= "watermelon"

    puts fruit_seven
    # watermelon
  ```

##### TERNARY OPERATOR

[Go Back to Contents](#contents)

```Ruby
  meat_one = new_grocery ? "pork ribs" : "steak"
  puts meat_one
```

##### IF STATEMENT SINGLE LINE

[Go Back to Contents](#contents)

- We can also implement an if statement in a single line
- To do so, we use the `;` (semicolon is optional, in this case we need them to define the end of the line)

  ```Ruby
    if new_grocery; fruit_nine = "pear"; else; fruit_nine = "banana"; end
    puts fruit_nine
    # banana
  ```

#### For Statement

[Go Back to Contents](#contents)

- Option 1 - `for ... in ...`

  ```Ruby
    friends1 = Array['Thaisa', 'Yumi', 'Mike', 'Joy']

    friends1.each do |variable|
      puts variable
    end

    # Thaisa
    # Yumi
    # Mike
    # Joy
  ```

- Range `0..5`

  ```Ruby
    for idx in 0..5
      puts idx
    end

    # 0
    # 1
    # 2
    # 3
    # 4
    # 5

    6.times do |idx|
      puts idx
    end

    # 0
    # 1
    # 2
    # 3
    # 4
    # 5
  ```

#### While Statement

[Go Back to Contents](#contents)

```Ruby
  counter = 0
  while counter < 5
    puts counter
    counter += 1
  end
```

### Case Expressions (Switch/Cases)

[Go Back to Contents](#contents)

```Ruby
  def get_day_name(day)
    day_name = ""

    case day
    when "mon"
      day_name = "Monday"
    when "tue"
      day_name = "Tuesday"
    when "wed"
      day_name = "Wednesday"
    when "thu"
      day_name = "Thursday"
    when "tri"
      day_name = "Friday"
    when "sat"
      day_name = "Saturday"
    when "sun"
      day_name = "Sunday"
    else
      return "Invalid abbreviation"
    end

    day_name
  end

  puts get_day_name("mon")
  # Monday
  puts get_day_name("Hi")
  # Invalid abbreviation
```

#### Assigning Result

[Go Back to Contents](#contents)

- Assign the result to a variable

  ```Ruby
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
    # Wednesday
  ```

#### Condensed Case Expression

[Go Back to Contents](#contents)

```Ruby
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
  # Thursday
```

### External File

[Go Back to Contents](#contents)

- [Modes](https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options)

- Read Files - **r**

  ```Ruby
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

    # Jim, Sales
    # Andy, Sales
    # Kelly, Customer Service
    # Creed, Quality Assurance
    # Michael, Manager
  ```

- Another option to read an external file

  - **Don't forget to close the file**

    ```Ruby
      openedFile = File.open("external_file.txt", "r");
      puts openedFile.read()
      openedFile.close()

      # Jim, Sales
      # Andy, Sales
      # Kelly, Customer Service
      # Creed, Quality Assurance
      # Michael, Manager
    ```

### Handling Errors

[Go Back to Contents](#contents)

```Ruby
  begin
    10 / 0
  rescue ZeroDivisionError
    puts 'You cannot divide a number by zero'
  end
```

- Signing the error to a variable

  ```Ruby
    begin
      lucky_num = [1, 2, 3, 4, 5, 6, 7]
      puts lucky_num['dog']
    rescue TypeError => e
      puts "Wrong format type, #{e}"
    end
  ```

### Class

[Go Back to Contents](#contents)

- We can define the class attributes using **attr_accessor**

  ```Ruby
    # Create a book class
    class Book
      attr_accessor :title, :author, :pages
    end

    book1 = Book.new
    book1.title = 'Harry Potter'
    book1.author = 'JK Rowling'
    book1.pages = 400

    puts book1.title

    book2 = Book.new
    book2.title = 'Lord of the Rings'
    book2.author = 'Tolkein'
    book2.pages = 500

    puts book2.author
  ```

#### Initializer Methods (Constructors)

[Go Back to Contents](#contents)

```Ruby
  # Create a book class
  class Book2
    attr_accessor :title, :author, :pages

    def initialize(title, author, pages)
      puts 'Creating Book'
      @title = title
      @author = author
      @pages = pages
    end
  end

  book3 = Book2.new('Harry Potter', 'JK Rowling', 400)
  puts book3.title
  book4 = Book2.new('Lord of the Rings', 'Tolkein', 500)
  puts book4.author
```

#### Object Methods / Instance Methods

[Go Back to Contents](#contents)

- **Method** is a class function, so every time we hear method it's a related to a certain class

  ```Ruby
    # Create a student class
    class Student
      attr_accessor :name, :major, :gpa

      def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
      end

      def honors
        @gpa >= 3.5
      end
    end

    student1 = Student.new('Jim', 'Business', 2.6)
    student2 = Student.new('Pam', 'Art', 3.6)

    puts student1.honors
    puts student2.honors
  ```

- One `@` is an instance variable
- Two `@@` is a class variable
- [Stackoverflow](https://stackoverflow.com/questions/17098000/what-is-the-difference-between-and-in-ruby)

  ```Ruby
    class Banana
      @@author = "Roger"

      def initialize
        @kind = "Lady Finger"
      end

      def get_kind
        @kind
      end


      def self.get_author
        @@author
      end
    end

    puts Banana.get_author
    banana_new = Banana.new
    puts banana_new.get_kind
    # Roger
    # Lady Finger
  ```

#### Getters / Setters

[Go Back to Contents](#contents)

- Getters

  ```Ruby
    class Banana
      @@author = "Roger"      # Class variable

      def initialize
        @kind = "Lady Finger" # Instance Variable
      end

      def get_kind
        @kind
      end


      def self.get_author
        @@author
      end
    end

    puts Banana.get_author
    # Roger
  ```

- Setters

  - To create a setter we need to add `=` in the end of the function

    ```Ruby
      def self.set_author= new_name
        @@author = new_name
      end
    ```

    ```Ruby
      class Banana
        @@author = "Roger"      # Class variable

        def initialize
          @kind = "Lady Finger" # Instance Variable
        end

        def get_kind
          @kind
        end

        def self.get_author
          @@author
        end

        def self.set_author= new_name
          @@author = new_name
        end
      end

      puts Banana.get_author
      Banana.set_author = "Thaisa"
      puts Banana.get_author
      # Roger
      # Thaisa
    ```

##### ATTRIBUTES

[Go Back to Contents](#contents)

- With classes we have:

  - `attr_accessor` creates the getters and setters
  - `attr_writer` creates only the setters
  - `attr_reader` creates only the getters
  - [Ruby Guides](https://www.rubyguides.com/2018/11/attr_accessor/)

- Instead having to code all the getters and setters, we can use the `attr_...`

  ```Ruby
    class Banana_Two
      attr_accessor :author

      def initialize
        @author = "Mike" # Instance variable
      end
    end

    banana_two = Banana_Two.new
    puts banana_two.author
    banana_two.author = "Cabecinha"
    puts banana_two.author
    # Mike
    # Cabecinha
  ```

#### Inheritance

[Go Back to Contents](#contents)

```Ruby
  # Create a chef class
  class Chef
    def make_chicken
      puts 'The chef makes chicken'
    end

    def make_salad
      puts 'The chef makes salad'
    end

    def make_special_dish
      puts 'The chef makes bbq ribs'
    end
  end

  # Create a chef class
  class ItalianChef < Chef
    def make_special_dish
      puts 'The chef makes eggplant parm'
    end

    def make_pasta
      puts 'The chef makes pasta'
    end
  end

  chef1 = Chef.new
  chef1.make_chicken
  # The chef makes chicken
  chef1.make_special_dish
  # The chef makes bbq ribs

  chef2 = ItalianChef.new
  chef2.make_salad
  # The chef makes salad
  chef2.make_special_dish
  # The chef makes eggplant parm
  chef2.make_pasta
  # The chef makes pasta
```

#### Class Methods

[Go Back to Contents](#contents)

- Class methods can be invoked without the need of invoking the class

  ```Ruby
    class Noise
      def self.talking
        puts "Someone is talking"
      end
    end

    Noise.talking
    # Someone is talking
  ```

#### Instance Methods

[Go Back to Contents](#contents)

- We need to invoke the class to use the method

  ```Ruby
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
    puts person_one.return_first_name
    puts person_one.return_last_name
    # Roger
    # Takeshita
  ```

### Modules

[Go Back to Contents](#contents)

- in `module_tools.rb`

  ```Ruby
    # frozen_string_literal: true

    # Tools module
    module Tools
      def say_hi(name)
        puts "hello #{name}"
      end

      def say_bye(name)
        puts "bye #{name}"
      end
    end
  ```

- in `basics.rb`

  ```Ruby
    require_relative 'module_tools'

    # Creates a dummy class
    class Dummy
      include Tools
    end

    new_var = Dummy.new
    new_var.say_hi('Roger')
    new_var.say_bye('Roger')
  ```

- When we wrap a class with a module, this helps us prevent name clashing. This is very useful when we are developing our own library and don't know if the user already defined some variable that we a using in our code
- **namespace** (to avoid conflicts) - encapsulate the code

  ```Ruby
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

    class Person_Two
      include Moveable
    end

    person_two = Person_Two.new
    puts person_two.running
    puts person_two.walking
    puts person_two.jogging
  ```

### Functions

[Go Back to Contents](#contents)

```Ruby
  def print_name data
    puts data[:name]
  end

  print_name({ name: "Yumi" })
  print_name name: "Joy"

  # Yumi
  # Joy
```

#### Explicit Define The Arguments (Hash)

[Go Back to Contents](#contents)

- Object destructuring

  ```Ruby
    def lets_eat kind:, time:, where:
      puts "Let's eat #{kind} at #{time}, local: #{where}"
    end

    lets_eat kind: "Beef", time: "5PM", where: "my home"
    # Let's eat Beef at 5PM, local: my home
  ```

- Normal object

  ```Ruby
    def lets_eat_again data
      puts "Let's eat again #{data[:kind]} at #{data[:time]}, local: #{data[:where]}"
    end

    lets_eat kind: "BBQ", time: "12PM", where: "your home"
    # Let's eat BBQ at 12PM, local: your home
  ```

  ```Ruby
    def lets_play(data)
      puts "Let's play #{data[:kind]} at #{data[:time]}, local: #{data[:where]}"
    end

    lets_play({ kind: "video game", time: "8PM", where: "Thaisa's house" })
    # Let's play video game at 8PM, local: Thaisa's house
  ```
