class ProcExample
	def pass_in_block(&action)
		@stored_proc = action
	end
	
	def use_proc(params)
		@stored_proc.call(params)
	end

end

def create_block_object(&block)
	block
end

eg = ProcExample.new
eg.pass_in_block {|param| puts "The parameter is #{param}"}
eg.use_proc(99)

# block_obj = create_block_object {|param| puts "You called me with #{param}"}
# block_obj = -> (param) { puts "You called me with #{param}" }
# block_obj = lambda { |param| puts "You called me with #{param}" }
# block_obj = proc { |param| puts "You called me with #{param}" }
block_obj = Proc.new { |param| puts "You called me with #{param}" }

block_obj.call(99)
block_obj.call("cat")