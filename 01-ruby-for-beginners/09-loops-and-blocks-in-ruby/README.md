# Loops and Blocks in Ruby

```sh
irb
```

```ruby
loop do
  puts "I'm looping..."
end
20.times do
  puts "I'm looping..."
end
1.upto(10) do
  puts "Going up!"
end
1.upto(10) { |n| puts n }
5.upto(100) { |n| puts n }
10.downto(2) { |n| puts n }
num = 5
while num <= 50
  puts "Not greater than or equal to 50 yet..."
  num += 1
end
num = 5
until num > 50
  puts "Not there yet..."
  num += 1
end
nums = [1, 2, 3, 4, 5]
nums.each { |num| puts num }
nums.each do |num|
  puts num
end
negative_nums = [-1, -2, -3, -4, -5]
positive_nums = negative_nums.map { |num| num.abs }
positive_nums
negative_nums
def some_numbers(arr_of_nums, &code_block)
  arr_of_nums.each { |num| code_block.call(num) }
end
some_numbers(negative_nums) do |num|
  puts num.abs
end
some_numbers(negative_nums) { |num| puts num.abs }
def some_numbers(arr_of_nums)
  arr_of_nums.each { |num| yield num }
end
some_numbers(negative_nums) { |num| puts num.abs }
print_captialized_name = Proc.new { |name| puts name.capitalize }
print_captialized_name
print_captialized_name.call("ian")
["ian", "bob", "chris"].each &print_captialized_name
["ian", "bob", "chris"].map { |name| name.capitalize }
["ian", "bob", "chris"].map(&:capitalize)
def some_numbers(arr_of_nums, &code_block)
  arr_of_nums.each { |num| code_block.call(num) }
end
negative_nums = [-1, -2, -3]
some_numbers(negative_nums)
def some_numbers(arr_of_nums)
  arr_of_nums.each { |num| yield num }
end
some_numbers(negative_nums)
def some_numbers(arr_of_nums, &code_block)
  arr_of_nums.each { |num| code_block.call(num) if block_given? }
end
some_numbers(negative_nums)
def some_numbers(arr_of_nums)
  arr_of_nums.each { |num| yield num if block_given? }
end
some_numbers(negative_nums)
l = lambda { puts "hello" }
l.call
stabby_lambda = -> { puts "Stabby Lambda" }
stabby_lambda.call
greet_person = ->(name) { puts "Hello, #{name}" }
greet_person.call("Ian")
bid_farewell = Proc.new { |name| puts "Goodbye #{name}" }
bid_farewell.call("Ian")
greet_person.call
bid_farewell.call
def lambda_return_example
  puts "Inside method body"
  l = -> { return 5}
  l.call
  puts "After lambda call"
end
def proc_return_example
  puts "Inside method body"
  p = Proc.new { return 5 }
  p.call
  puts "After proc call"
end
lambda_return_example
proc_return_example
```
