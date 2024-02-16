line = gets

# =~ returns the starting string position in regular expression
# otherwise it return nil
# if line =~ /Ruby|ruby|Rust|rust/
# 	puts "Scripting language mentioned: #{line}"
# end

# # same as =~
# if line.match?(/JavaScript|js|JS|TypeScript|ts|TS/)
# 	puts "Browser language mentioned: #{line}"
# end

# newline = line.sub(/Python/, 'Ruby')
newerline = line.gsub(/Rust|JavaScript|TypeScript/, 'Ruby')

# puts newline
puts newerline