require_relative 'example_1'
require_relative 'example_2'

example_1 = FirstModule::ModuleClass.new
example_2 = SecondModule::ModuleClass.new

puts example_1.test_function
puts example_2.test_function
