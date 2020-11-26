<h1 id='contents'>Table of Contents</h1>

- [RUBY PROGRAMMING LANGUAGE - FULL COURSE](#ruby-programming-language---full-course)
  - [Links](#links)
  - [Basics](#basics)
    - [Print/Puts](#printputs)
    - [Variables](#variables)
    - [Data Types](#data-types)
      - [String](#string)
      - [Number (Integer)](#number-integer)
      - [Number (Float)](#number-float)
      - [Boolean](#boolean)
      - [Null](#null)
      - [Array](#array)
      - [Hash/Object/Dictionary](#hashobjectdictionary)
    - [Methods](#methods)
    - [Loops](#loops)
      - [If Statement](#if-statement)
      - [For Statement](#for-statement)
      - [While Statement](#while-statement)
    - [Case Expressions (Switch/Cases)](#case-expressions-switchcases)
    - [External File](#external-file)
    - [Handling Errors](#handling-errors)
    - [Class](#class)
      - [Initializer Methods (Constructors)](#initializer-methods-constructors)
      - [Object Methods / Instance Methods](#object-methods--instance-methods)
      - [Inheritance](#inheritance)
    - [Modules](#modules)

# RUBY PROGRAMMING LANGUAGE - FULL COURSE

## Links

- [Ruby Programming Language - Full Course (freeCodeCamp)](https://www.youtube.com/watch?v=t_ispmWmdjY)

## Basics

### Print/Puts

[Go Back to Contents](#contents)

- The difference between `print` and `puts` is that `puts` after printing the value, adds a new line after
- And `print` doesn't add a new line

  ```Ruby
    puts "Roger"
    print "Takeshita"
    # Roger
    # Takeshita

    print "Takeshita"
    puts "Roger"
    # TakeshitaRoger
  ```

### Variables

[Go Back to Contents](#contents)

```Ruby
  name = "Roger"
  age = "33"
  puts "Hi my name is #{name}"
  puts ("I'm " + age + " years old")
  # Hi my name is Roger
  # I'm 33 years old
```

### Data Types

[Go Back to Contents](#contents)

- In Ruby we have the following **data types**

#### String

[Go Back to Contents](#contents)

```Ruby
  name = "Roger"
```

- Number To String

  ```Ruby
    age = 33
    puts "I'm #{age.to_s} years old"
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
    name = "      Roger Takeshita      "
    puts name.strip()
    # Roger Takeshita
  ```

- Lower case

  ```Ruby
    name = "Roger Takeshita"
    puts name.downcase()
    # roger takeshita
  ```

- Upper case

  ```Ruby
    name = "Roger Takeshita"
    puts name.upcase()
    # ROGER TAKESHITA
  ```

- Length()

  ```Ruby
    name = "Roger Takeshita"
    puts name.length()
    # 15
  ```

- Include?

  ```Ruby
    name = "Roger Takeshita"
    puts name.include? "Ro"
    # true
  ```

- Index()

  ```Ruby
    name = "Roger Takeshita"
    puts name.index("T")
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
    num1 = "1"
    num2 = "2"
    puts (num1.to_i + num2.to_i)
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
    num1 = "1"
    num2 = "2.5"
    puts (num1.to_i + num2.to_f)
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
    puts friends.length()
    # 3
  ```

- Include?

  ```Ruby
    puts friends.include? "Yumi"
    # true
  ```

- Reverse()

  ```Ruby
    puts friends.reverse()
    # Mike
    # Yumi
    # Thaisa
  ```

- Sort()

  ```Ruby
    puts friends.sort()
    # Mike
    # Thaisa
    # Yumi
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

- Other ways to fetch information from a hash

  ```Ruby
    statesBrazil = {
      :Paraná => "PR",
      :"São Paulo" => "SP",
      :"Mato Grosso" => "MG"
    }

    puts statesBrazil[:Paraná]
    # PR
    puts statesBrazil[:"São Paulo"]
    # SP
  ```

  ```Ruby
    contact = {
      1 => "Roger Takeshita",
      2 => "Thaisa Sakima",
      3 => "Yumi Sakima"
    }

    puts contact[1]
    puts contact[2]
    puts contact[3]

    # Roger Takeshita
    # Thaisa Sakima
    # Yumi Sakima
  ```

### Methods

[Go Back to Contents](#contents)

```Ruby
  def putsHi
    puts "Hi there"
  end

  putsHi()
```

- Parameters

  ```Ruby
    def putsHiToUser(user, age)
      puts "Hi #{user} #{age.to_s}"
    end

    putsHiToUser("Roger", 33)
    # Hi Roger 33
  ```

- Default parameters

  ```Ruby
    def putsHiToUser(user, age=10)
      puts "Hi #{user} #{age.to_s}"
    end

    putsHiToUser("Roger")
    # Hi Roger 10
  ```

- Return Statement

  - By default ruby returns the last line of the code

  ```Ruby
    def returnString(name="Guest")
      "Hi #{name}"
    end

    puts returnString("Yumi")
    # Hi Yumi
  ```

  - We can force the return value, by defining **return** keyword
  - Just like in JS, nothing after the return will be executed
  - If we add a comma in the return value, ruby will return an array

    ```Ruby
      def cube(num)
        return num * num * num, "Cube Volume"
      end

      data = cube(3)
      puts data[0]
      # 27
      puts data[1]
      # Cube Volume
    ```

### Loops

#### If Statement

[Go Back to Contents](#contents)

```Ruby
  isMale = true
  isTall = false

  if isMale and isTall
    puts "You are a male and tall"
  elsif isMale and !isTall
    puts "Your are male but not tall"
  else
    puts "You're not a male"
  end

  # You are male but not tall
```

- **and** / **or**
- comparison
  - **==**
  - **!=**
  - **>=**
  - **<=**

#### For Statement

[Go Back to Contents](#contents)

- Option 1 - `for ... in ...`

  ```Ruby
    friends1 = ["Thaisa", "Yumi", "Mike", "Joy"]

    for friend in friends1
      puts friend
    end

    # Thaisa
    # Yumi
    # Mike
    # Joy
  ```

- Option 2 - `...each do |variable|`

  ```Ruby
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
  # Monday
  puts get_day_name("Hi")
  # Invalid abbreviation
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
    num = 10 / 0
  rescue ZeroDivisionError
    puts "You cannot devide a number by zero"
  end
```

- Signing the error to a variable

  ```Ruby
    begin
      lucky_num = [1, 2, 3, 4, 5, 6, 7]
      puts lucky_num["dog"]
    rescue TypeError => error
      puts "Wrong format type, #{error}"
    end
  ```

### Class

[Go Back to Contents](#contents)

- We can define the class attributes using **attr_accessor**

  ```Ruby
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
  ```

#### Initializer Methods (Constructors)

[Go Back to Contents](#contents)

```Ruby
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
```

#### Object Methods / Instance Methods

[Go Back to Contents](#contents)

```Ruby
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
  # false
  puts student2.has_honors()
  # true
```

#### Inheritance

[Go Back to Contents](#contents)

```Ruby
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
  # The chef makes chicken
  chef1.make_special_dish()
  # The chef makes bbq ribs

  chef2 = ItalianChef.new()
  chef2.make_salad()
  # The chef makes salad
  chef2.make_special_dish()
  # The chef makes eggplant parm
  chef2.make_pasta()
  # The chef makes pasta
```

### Modules

[Go Back to Contents](#contents)

- in `module_tools.rb`

  ```Ruby
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
    require_relative "module_tools.rb"
    include Tools
    Tools.say_hi("Roger")
    # hello Roger
    Tools.say_bye("Roger")
    # bye Roger
  ```
