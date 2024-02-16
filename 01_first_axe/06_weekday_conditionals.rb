today = Time.now

if today.saturday?
	puts "Do chores around the house"
elsif today.thursday?
	puts "It is Friday night."
elsif today.friday?
	puts "It is Friday"
else
	puts "Go to work"
end