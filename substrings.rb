# our dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new(0)

  # downcase to ignore the case, then split it into separate words
  string.downcase!
  words = string.split(" ")

  words.each do |word|
    dictionary.each do |entry|
      # iterate through the dictionary for each word in our string, increment word's count if found
      if word.include?(entry)
        result[entry] += 1
      end
    end
  end
  result
end

# calling the function to check it
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
