# frozen_string_literal: true

# Order class
class Order
  attr_reader :items

  def initialize
    @items = []
  end

  include ItemContainer
end
