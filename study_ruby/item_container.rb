# frozen_string_literal: true

# Module ItemContainer
module ItemContainer
  module ClassMethods
    def min_price
      100
    end
  end

  module InstanceMethods
    def add_to_list(item)
      @items.push item unless item.real_price < self.class.min_price
    end

    def remove_from_list
      @items.pop
    end

    def validate
      # block
      @items.each { |i| puts 'Item has no price' if i.price.nil? }
    end

    def delete_invalid_items
      @items.delete_if { |i| i.end_price.nil? }
    end

    def count_valid_items
      # якщо метод каунт приймає блок то він виводить ті елементи значення яких буде дорівнювати тру
      @items.count(&:end_price)
    end
  end

  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end
end
