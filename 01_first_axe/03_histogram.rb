# the default value for histogram is zero
histogram = Hash.new(0)

p histogram['ruby']
p histogram['ruby'] += 1
p histogram['ruby']
