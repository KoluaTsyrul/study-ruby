# Car class that is main in this structure
class Car
  attr_accessor :number_of_wheels, :seating_capacity, :maximum_velocity

  def initialize(number_of_wheels, seating_capacity, maximum_velocity)
    @number_of_wheels = number_of_wheels
    @seating_capacity = seating_capacity
    @maximum_velocity = maximum_velocity
  end

  def car_class_method
    puts 'Method from Car class that will we inherit by TeslaCar class'
  end

  def polymorphism
    p 'It is Car class function'
  end

  public

  def public_method
    puts 'It is public method'
    privat_method
  end

  private

  def privat_method
    puts 'It is privat method'
  end
end
