dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(word, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |dictionary_word, substring_count|
    substring_count[dictionary_word] += 1 if word.match? dictionary_word
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
