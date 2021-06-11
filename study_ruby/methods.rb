# frozen_string_literal: true

def user_name(first_name = '', last_name = '')
  greeting = "Hello User\n"
  unless first_name == '' && last_name == ''
    greeting += 'My name is ' + first_name + ' ' + last_name
  end
  greeting
end

puts user_name('James', 'Bond')
