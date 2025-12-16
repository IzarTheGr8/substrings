dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  words = word.split(' ')
  results = Hash.new(0)

  dictionary.each do |substring|
    words.each do |word|
      /#{substring}/i =~ word ? results[substring] += 1 : next
    end
  end

  results

end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
