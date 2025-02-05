DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#use include method to match words in dictionary to input string
def substrings(string, dictionary)
  lowerCase = string.downcase
  DICTIONARY.reduce(Hash.new(0)) do |hash, element|
    count = lowerCase.scan(element)
    if count.length > 0
      hash[element] = count.length
    end
    hash
  end
end

puts substrings("Howdy partner, sit down! How's it going?", DICTIONARY)

