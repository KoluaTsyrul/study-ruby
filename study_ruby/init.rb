# frozen_string_literal: true

require_relative 'item_container'
require_relative 'cart'
require_relative 'order'
require_relative 'item'
require_relative 'real_item'
require_relative 'virtual_item'
require_relative ''

# cart.validate
# # cart.remove_from_list
# item1 = VirtualItem.new(price: 100, name: 'BMW')
# item2 = RealItem.new(weight: 50, price: 99, name: 'Ford')
# item3 = VirtualItem.new(price: 200, name: 'Audi')
#
# cart = Cart.new
# cart.add_to_list item1
# cart.add_to_list item2
# cart.add_to_list item3
#
# puts cart.items.size
# cart.add_to_list item1
# cart.add_to_list item3
# cart.add_to_list item2
# cart.remove_from_list
#
# order = Order.new
# order.add_to_list item1
# order.add_to_list item2
# order.add_to_list item3
#
# p cart.items.size
# p order.items.size
#
# puts cart.count_valid_items
# cart.delete_invalid_items
# p cart.items

# puts Item.discount
# puts item1.price

# puts item1.real_price
# puts item1.tax_amount
# puts item1.end_price
