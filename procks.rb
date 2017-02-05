class MyProc
	def save_block(&proc)
		@proc_object = proc 
	end 

	def call_proc_with(arg)
		@proc_object.call arg
	end

	def get_proc
		@proc_object
	end
end

my_proc =  MyProc.new
my_proc.save_block { |x| puts "Proc called with #{x} as argument." }
my_proc.call_proc_with 99
my_proc.get_proc.call 99 

def n_times(thing)
	#lambda { |n| n * thing }
	#==
	-> n { n * thing } 
end

lambda1 = n_times(2)
p lambda1.call 2
p lambda1.call 4
p lambda1.call 	5

def my_if(clause, then_clause, else_clause)
	if clause
		then_clause.call
	else
		else_clause.call
	end
end

5.times do |num|	
	my_if num.even?,
		-> { p "#{num} is even!" },
		-> { p "#{num} is odd!"}
end