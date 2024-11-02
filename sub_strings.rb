# require 'pry-byebug'
def substrings(words, dictionary)
  words = words.downcase.gsub(/[^\w\s]/, '').split(' ')
  matches = Hash.new(0)
#   binding.pry
  words.each do |word|
    dictionary.each do |entry|
        if word.include?(entry)
            add_match(matches, entry)
        end
    end
  end
  p matches
end
def add_match(matches, entry)
    matches["#{entry}"] += 1
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("go and so as below and as so go as so below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
