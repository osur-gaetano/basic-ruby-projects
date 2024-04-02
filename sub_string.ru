dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string_array = string.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/,'').split
  word_count = Hash.new(0)

  dictionary.each do |dict_item|
    string_array.each do |word|
      if word.include? dict_item
        word_count[dict_item]+=1
      end
    end
  end
  word_count
end

me = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts me
