# frozen_string_literal: true

a = if ARGV[0]
      ARGV[0].to_i
    else
      0
    end

while a < 10
  a += 1
  puts "'a' variable is " + a.to_s
  sleep 1
end
