dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  results = {}

  dictionary.each do |substring|
    /#{substring}/i =~ word ? results[substring] =+ 1 : next
  end

  p results

end

substrings("below", dictionary)
