queue = Array.new

queue.push "green"
queue.push "cyan"
queue.push "grey"

# unshift means add new item in array
queue.unshift "red"
queue.unshift "blue"

print queue

print "\n"

# remove the current item from key first position in array
queue.shift

print queue

print "\n"

# remove the current item from key second position in array
queue.shift(2)

print queue