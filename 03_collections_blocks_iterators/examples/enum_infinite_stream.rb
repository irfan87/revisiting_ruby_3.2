class EnumInfiniteStream
	def all
		Enumerator.produce(0) do |num|
			num += 1
		end.lazy
	end
end

def palindrome?(n)
	n = n.to_s
	n == n.reverse
end

p EnumInfiniteStream.new.all.first(10)
p EnumInfiniteStream.new.all
	.select { (_1 % 3).zero? }
	.select { palindrome?(_1) }
	.first(10)
