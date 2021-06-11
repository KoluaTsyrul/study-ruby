# frozen_string_literal: true

require_relative 'inheritance_1'
require_relative 'inheritance_2'

car = Car.new(4, 5, 100)
p car.number_of_wheels
p car.seating_capacity
p car.maximum_velocity
p '-------------------------------------'

tesla_car = EliteCar.new(4, 2, 500)
p tesla_car.number_of_wheels
p tesla_car.seating_capacity
p tesla_car.maximum_velocity
p '-------------------------------------'

car.polymorphism
tesla_car.polymorphism
p '-------------------------------------'

car.public_method
p '-------------------------------------'
car.private_methods
