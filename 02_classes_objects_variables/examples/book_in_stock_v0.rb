class BookInStock
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	def isbn
		@isbn
	end

	def price
		@price
	end

	def to_s
		"ISBN: #{@isbn}, price: #{@price}"
	end
end

bookOne = BookInStock.new("isbn1", 12.10)
bookTwo = BookInStock.new("isbn2", 12.00)
bookThree = BookInStock.new("isbn3", 11.00)

puts bookOne
puts bookTwo
puts bookThree

print "\n"

puts "Book One's Info"
puts "ISBN: #{bookOne.isbn}"
puts "Price: $#{bookOne.price}"

print "\n"

puts "Book Two's Info"
puts "ISBN: #{bookTwo.isbn}"
puts "Price: $#{bookTwo.price}"

print "\n"

puts "Book Three's Info"
puts "ISBN: #{bookThree.isbn}"
puts "Price: $#{bookThree.price}"