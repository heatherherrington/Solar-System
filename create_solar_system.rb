require_relative 'planet_array'
require_relative 'solar_system'

milky_way = SolarSystem.new("The Milky Way")

mercury  = PlanetArray.new("Mercury", 0, "red", 4878, 0.38, 87.97, 70)
venus    = PlanetArray.new("Venus", 0, "pink", 12100, 0.88, 35.00, 109)
earth    = PlanetArray.new("Earth", 1, "blue/green", 12756, 1.00, 29.8, 146)
flippant = PlanetArray.new("Flippant", 4, "fuschia", 3821, 0.68, 43.1, 148)
mars     = PlanetArray.new("Mars", 2, "red", 6785, 0.38, 24.6, 155)
jupiter  = PlanetArray.new("Jupiter", 63, "blue", 139822, 2.36, 12.1, 817)
hercules = PlanetArray.new("Hercules", 47, "plaid", 38183, 3.08, 32.1, 1250)
saturn   = PlanetArray.new("Saturn", 62, "white", 119871, 1.08, 29.5, 1500)
uranus   = PlanetArray.new("Uranus", 27, "light blue", 51488, 0.89, 6.6, 3000)
neptune  = PlanetArray.new("Neptune", 13, "blue", 49493, 1.13, 5.4, 4500)
pluto    = PlanetArray.new("Pluto", 4, "grey", 12100, 0.067, 35, 7380)

milky_way.add_planet(mercury)
milky_way.add_planet(venus)
milky_way.add_planet(earth)
milky_way.add_planet(flippant)
milky_way.add_planet(mars)
milky_way.add_planet(jupiter)
milky_way.add_planet(hercules)
milky_way.add_planet(saturn)
milky_way.add_planet(uranus)
milky_way.add_planet(neptune)
milky_way.add_planet(pluto)

milky_way.add_planet_user

milky_way.list_planets(milky_way)

milky_way.planet_distance(milky_way)
