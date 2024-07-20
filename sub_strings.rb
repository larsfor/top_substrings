def substrings(input, dict)
  result = Hash.new(0)
  input = input.split()
  dict.each do |word2|
    input.each do |word1|
      if /#{word2.downcase}/ =~ word1.downcase
        result[word2] += 1
      end
    end
  end
  result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
