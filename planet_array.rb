class PlanetArray
  attr_accessor :name, :number_of_moons, :color, :diameter, :specific_gravity, :rate_of_rotation, :distance_from_the_sun, :planet

  def initialize(name, number_of_moons, color, diameter, specific_gravity, rate_of_rotation, distance_from_the_sun)
    @name = name
    @number_of_moons = number_of_moons
    @color = color
    @diameter = diameter
    @specific_gravity = specific_gravity
    @rate_of_rotation = rate_of_rotation
    @distance_from_the_sun = distance_from_the_sun
    @planet = planet
  end

  def print_props
    mass = @specific_gravity.to_f * 100

    return "#{ @name } is #{ @color } and has #{ @number_of_moons } moons. Its diameter is #{ @diameter } meters. Its specific gravity relative to Earth is #{ @specific_gravity }, which means that if you weighed 100 pounds on Earth, you'd weigh #{ mass } on #{ @name }. Its farthest distance from the sun is #{ @distance_from_the_sun } million kilometers, and its rate of rotation is #{ @rate_of_rotation } km/sec."
  end
end

# Testing in irb
# ♥ irb -r ./planet.rb
# 2.3.1 :001 > mars = Planet.new("Mars")
#  => #<Planet:0x007fb2691715b0 @name="Mars">
# 2.3.1 :002 > mars.name
#  => "Mars"
# 2.3.1 :003 > exit
# redherring: week2
# ♥ irb -r ./planet.rb
# 2.3.1 :001 > mars = Planet.new("Mars", 4, "red", 23987, 1.4)
#  => #<Planet:0x007f98c9821c48 @name="Mars", @number_of_moons=4, @color="red", @diameter=23987, @specific_gravity=1.4>
# 2.3.1 :002 > mars.specific_gravity
#  => 1.4
# 2.3.1 :003 > jupiter = Planet.new("Jupiter", 8, "blue", 398722, 3.5)
#  => #<Planet:0x007f98c98c8d90 @name="Jupiter", @number_of_moons=8, @color="blue", @diameter=398722, @specific_gravity=3.5>
# 2.3.1 :004 > jupiter.name
#  => "Jupiter"
# 2.3.1 :005 > earth = Planet.new("Earth", 1, "blue/green", 3982, 1)
#  => #<Planet:0x007f98c990d648 @name="Earth", @number_of_moons=1, @color="blue/green", @diameter=3982, @specific_gravity=1>
# 2.3.1 :006 > earth.color
#  => "blue/green"
# 2.3.1 :007 >
