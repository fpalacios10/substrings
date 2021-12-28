dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
	occurence_hash = Hash.new(0)
	string_input = input.split(" ")

	#loop through our dictionary
	dictionary.each {|word|
		#loop through our string input and see
		#if the dictionary word is in the string input
		string_input.each do |input|
			input = input.downcase
			#if it is, add it to our hash and increase count
			if input.include?(word) == true
				occurence_hash[word] += 1
			end
		end
	}
	p occurence_hash
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
