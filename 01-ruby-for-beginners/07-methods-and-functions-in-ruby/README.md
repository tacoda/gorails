# Methods and Functions in Ruby

```sh
irb
```

```ruby
def say_hello
  puts "Hello, world"
end
say_hello
def say_hello(name)
  puts "Hello, #{name}"
end
say_hello("Ian")
say_hello("Chris")
def say(greeting, name)
  puts "#{greeting}, #{name}"
end
say("Hello", "Ian")
say("Good morning", "Ian")
say
def say(greeting = "Hello", name)
  puts "#{greeting}, #{name}"
end
say("Ian")
say("Good morning", "Ian")
say("Ian", "Good morning")
def say(greeting:, name:)
  puts "#{greeting}, #{name}"
end
say("Good morning", "Ian")
say(greeting: "Good morning", name: "Ian")
say(name: "Ian", greeting: "Good morning")
def say(greeting: "Hello", name:)
  puts "#{greeting}, #{name}"
end
say(name: "Ian")
say(name: "Ian", greeting: "Good morning")
def some_method
  2 + 2
  puts "hello"
  5 * 5
end
some_method
result = some_method
result
result * 100
def check_input(num)
  return 0 if num.nil?
  num
end
check_input(7)
check_input(nil)
```
