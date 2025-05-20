# Hashes in Ruby

```sh
irb
```

```ruby
credentials = {public_key: "asdf1234", secret_key: "4321fdsa"}
credentials[:public_key]
credentials[:secret_key]
credentials[:public_key] = "asdfasdfasdf"
credentials
credentials[:region] = "aws-east-2"
credentials
credentials.size
credentials.keys
credentials.values
credentials.delete(:region)
credentials
me = {name: "Ian", age: 42, hobbies: ["programming", "reading", "guitar"]}
me[:hobbies]
me[:hobbies].join(', ')
me[:hobbies].size
pets = {dog: {name: "Spot"}, cat: {name: "Yarn"}}
pets[:dog]
pets[:dog][:name]
pets.dig(:dog, :name)
me[:hobbies].each { |hobby| puts hobby.capitalize }
me[:hobbies].each { |hobby| print hobby.capitalize }
me[:hobbies].each { |hobby| p hobby.capitalize }
me.each { |details| puts details }
me.each { |details| p details }
me.each { |details| print details }
me.each do |key, val|
  puts "#{key} => #{val}"
end
{"foo" => "bar"}
me[:location]
new_age = {age: 45}
me.merge(new_age)
h = {["foo", "bar"] => "baz"}
h[["foo", "bar"]]
a = {name: "Ian"}
b = {"name" => "Chris"}
a[:name]
b[:name]
b["name"]
```
