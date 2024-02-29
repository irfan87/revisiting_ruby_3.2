my_array = [1,2,3, "cat"]
enum_array = my_array.to_enum

puts enum_array.next
puts enum_array.next

my_hash = {dog: "canine", fox: "vulpine"}
enum_hash = my_hash.to_enum

puts enum_hash.next
puts enum_hash.next

my_array_reversed = [1,3,"bat"]
enum_array_reversed = my_array_reversed.to_enum(:reverse_each)

puts enum_array_reversed.next
puts enum_array_reversed.next

enum_array_each = my_array.each

puts enum_array_each.next