# triangular_numbers = Enumerator.new do |yielder|
# 	number = 0
# 	count = 1
# 	loop do
# 		number += count
# 		count += 1
# 		yielder.yield(number)
# 	end
# end

# 5.times { print triangular_numbers.next, " " }
# puts

triangular_numbers = Enumerator.produce([1,2]) do |number, count|
	[number + count, count + 1]
end

5.times { print triangular_numbers.next.first, " " }
puts

triangular_numbers_lazy = Enumerator.produce([1,2]) do |number, count|
	[number + count, count + 1]
end.lazy.map { _1.first }

puts triangular_numbers_lazy.first(5)