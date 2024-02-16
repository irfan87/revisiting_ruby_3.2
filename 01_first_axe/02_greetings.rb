def greeting_ruby
	return "helloruby!"
end

def say_hello_goodbye(name)
	result = "I don't know why you say goodbye, #{name.capitalize}, I say hello"
	return result
end

def say_salam
	"assalamualaikum and\nHi!"
end

p greeting_ruby

p say_hello_goodbye("irfan")
p say_hello_goodbye("ivy")

print say_salam