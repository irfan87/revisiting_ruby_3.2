def call_block
	puts "Start of method"
	yield
	yield
	puts "Stop of method"
end

call_block { puts "In the block"}

def who_says_what
	yield("Dave", "hello")
	yield("Andy", "goodbye")
end

who_says_what {|person, phrase| p "#{person} says #{phrase}"}

animals = ["ant", "goat", "cow", "bull"]
animals.each { |animal| puts animal }

["cat", "dog", "horse"].each { |animal| print animal, " " }
5.times { print "*" }
3.upto(6) { |i| print i }
("a".."e").each { |char| print char }
("a".."e").each { print _1 }