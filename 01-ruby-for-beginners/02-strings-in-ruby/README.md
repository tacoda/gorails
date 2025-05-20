# Strings in Ruby

```sh
irb
```

```ruby
"Hello, world"
'Hello, world'
"They said, "Hello"" # Error
"They said, \"Hello\""
'It's hot outside' # Error
'It\'s hot outside'
"2 + 2 = 4"
'2 + 2 = #{2 + 2}' # Literal
"2 + 2 = #{2 + 2}"
"Hello, world".class
"Hello, world".upcase
"Hello, world".reverse
"hello" + "goodbye"
"hello" + " " + "goodbye"
"hello" * 5
"Hello, world".sub("Hello", "Good morning")
"Hello, world".sub("l", "s")
"Hello, world".gsub("l", "s")
"Hello, world".include?("world")
"Hello, world".include?("word")
"Hello, world".include?("h")
"Hello, world".include?("H")
"Hello, world".downcase.include?("h")
"Hello, world" =~ /He/
"Hello, world"[0]
"Hello, world" =~ /world/
"Hello, world".match(/He/)
"Hello, world".match(/He/)[0]
"Hello, world"[4]
"Hello, world"[-1]
"Hey"[-1]
"Hello, world"[-1]
"Hello, world"[-2]
"Hello, world"[-3]
"Hello, world"[100]
```
