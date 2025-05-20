# puts self

class House
  # puts self
  @@count = 0

  # attr_reader :color
  # attr_writer :color
  # attr_accessor :color
  attr_accessor :color, :style

  def initialize(color, style)
    # puts self
    @color = color
    @style = style
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.report_instance_count
    # "There are #{self.count} of instances of the #{self.name} class"
    "There are #{count} of instances of the #{name} class"
  end

  def details
    "This house is a #{color} #{style} House instance"
  end

  # def color
    # @color
  # end

  # def color=(color)
    # @color = color
  # end
end

# p House.name
# p House.class

# 10.times do
  # p House.new
# end

# p House.new("blue")
# house = House.new("blue")
# puts house.color
# puts House.color

# house.color=("red")
# puts house.color

# house.color = "purple"
# puts house.color

puts House.report_instance_count
puts House.count

house = House.new("blue", "craftsman")
puts house.color
puts house.style

puts house.details

puts House.count

# puts house.count

puts House.report_instance_count
