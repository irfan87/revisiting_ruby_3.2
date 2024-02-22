class MegaGreeter
	attr_accessor :names

	def initialize(names = "world")
		@names = names
	end

	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do  |name| 
				puts "Hello #{name}!" 
			end
		else
			puts "Hello, #{names}!"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "Goodbye, #{@names.join(", ")}"
		else
			puts "Goodbye, #{names}!"
		end
	end
end

if __FILE__ == $0	
	mega_greeter = MegaGreeter.new
	mega_greeter.say_hi
	mega_greeter.say_bye

	mega_greeter.names = "irfan"
	mega_greeter.say_hi
	mega_greeter.say_bye
	
	mega_greeter.names = ["Ivy", "Jone", "Jane", "Doe", "Fizz", "Buzz"]
	mega_greeter.say_hi
	mega_greeter.say_bye
	
	mega_greeter.names = nil
	mega_greeter.say_hi
	mega_greeter.say_bye
end