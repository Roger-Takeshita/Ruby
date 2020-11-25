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

- Number To String

  ```Ruby
    age = 33
    puts "I'm #{age.to_s} years old"
    # I'm 33 years old
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
