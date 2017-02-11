begin
	file = File.open('no_such_file', 'w')
	while line = file.gets
		p line
	end
rescue Exception
	puts "$! is #{$!}"
	file.close
	raise
end


# class RetryException < RuntimeError
# 	attr :ok_to_retry
# 	def initialize(ok_to_retry)
# 		@ok_to_retry = ok_to_retry
# 	end
# end

# def read_data(socket)
# 	data = socket.read(512)
# 	if data.nil?
# 		raise RetryException.new(true), "transient read error"
# 	end
# 	# .. normal processing
# end

# begin
# 	stuff = read_data(socket)
# 	# .. process stuff
# rescue RetryException => detail
# 	retry if detail.ok_to_retry
# 	raise
# end

word_list = File.open("wordlist")
word_in_error = catch(:done) do
	result = []
	while line = word_list.gets
		word = line.chomp
		throw(:done, word) unless word =~ /^\w+$/
		result << word
	end
	puts result.reverse
end

if word_in_error
	puts "Failed: '#{word_in_error}' found, but a word was expected"
end

# Failed: '*wow*' found, but a word was expected