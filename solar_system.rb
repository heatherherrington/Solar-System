class SolarSystem

  attr_accessor :name, :planets, :distance_from_each_other

  def initialize(name)
    @name = name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def add_planet_user
    puts "Would you like to add a planet? Yes or No?"
    answer = gets.chomp.downcase
    if answer != "yes" && answer != "no"
      puts "That isn't a valid input. Yes or No are the acceptable responses."
      answer = gets.chomp.downcase
    end
    while answer == "yes"
      puts "What planet would you like to add?"
      name = gets.chomp
      puts "How many moons does your planet have?"
      number_of_moons = gets.chomp
      puts "What color is your planet?"
      color = gets.chomp
      puts "What is the diameter of your planet?"
      diameter = gets.chomp
      puts "What is your planet's specific gravity?"
      specific_gravity = gets.chomp
      puts "What is your planet's rate of rotation?"
      rate_of_rotation = gets.chomp
      puts "In millions of kilometers, what is your planet's distance from the sun?"
      distance_from_the_sun = gets.chomp
      planet = PlanetArray.new(name, number_of_moons, color, diameter, specific_gravity, rate_of_rotation, distance_from_the_sun)
      @planets << planet
      puts "Would you like to add another planet? Yes or No?"
      answer = gets.chomp.downcase
    end
  end

  def planet_distance(planets)
    puts "This will calculate the distance between one planet and another, in millions of kilometers."
    puts "From 1 to #{ @planets.length }, what is the first planet you are interested in?"
    @planets.each_with_index do |object, i|
      puts "#{i + 1}: #{ object.name }"
    end
    interest_one = gets.chomp.to_i
    puts "And what other planet would you like to use?"
    interest_two = gets.chomp.to_i
    if interest_one < 0 || interest_one > @planets.length + 1 || interest_two < 0 || interest_two > @planets.length + 1
      puts "I'm sorry, that's not a valid input. Please try again. What's your first planet?"
      interest_one = gets.chomp.to_i
      puts "And what's your second planet?"
      interest_two = gets.chomp.to_i
    else
      chosen_planet_one = @planets[interest_one]
      chosen_planet_two = @planets[interest_two]
      distance_from_each_other = (chosen_planet_one.distance_from_the_sun - chosen_planet_two.distance_from_the_sun).abs
      puts "The distance between those two planets is #{ distance_from_each_other } million kilometers."
    end
  end

# Should go in planet_array file instead of here - all planet stuff should be there
  def list_planets(planets)
    puts "From 1 to #{ @planets.length }, which planet are you interested in? Please enter #{ @planets.length + 1 } to exit."
    @planets.each_with_index do |object, i|
      puts "#{i + 1}: #{ object.name }"
    end
    puts "#{ @planets.length + 1 }: Exit"
    interest = gets.chomp.to_i
    while interest != (@planets.length + 1)
      if interest < 0 || interest > @planets.length + 2
        puts "I'm sorry, that's not a valid input. Please try again."
        interest = gets.chomp.to_i
      else
        puts @planets[interest - 1].print_props
        puts "What other planets interest you?"
        interest = gets.chomp.to_i
      end
    end
  end
end
