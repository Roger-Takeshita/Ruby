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
      puts data[1]
      # 27
      # Cube Volume
    ```
