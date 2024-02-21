class BookInStock
	attr_reader :isbn
	attr_accessor :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	def price_in_cents
		(price * 100).round
	end

	def price_in_cents=(cents)
		@price = cents / 100.0
	end

	def to_s
		"ISBN: #{@isbn}, price: #{@price}"
	end
end

book = BookInStock.new("isbn1", 33.80)

puts book

print "\n"

puts "Book's Info"
puts "ISBN: #{book.isbn}"
puts "Price: $#{book.price}"
puts "Price in cents: $#{book.price_in_cents}"

book.price = book.price * 0.75
book.price_in_cents = 1234

puts "New Price: $#{book.price}"
puts "Price in cents: $#{book.price_in_cents}"