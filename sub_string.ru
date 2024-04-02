dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  word_count = Hash.new(0)
  string_array = string.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/,'').split


  dictionary.each do |dict_item|
    string_array.each { |word| word_count[dict_item]+=1 if word.include dict_item}
  end
  word_count
end

me = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts me
