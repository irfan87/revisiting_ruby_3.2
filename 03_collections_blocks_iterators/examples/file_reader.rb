class File
	def self.open_and_process(*args)
		f = File.open(*args)
		return f unless block_given?
		result = yield f
		f.close()
		result
	end
end

File.open_and_process('testfile.txt', 'r') do |file|
	while line = file.gets
		puts line
	end
end