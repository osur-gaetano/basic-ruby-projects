# frozen_string_literal: true

def shift_character(character, shift)
  return character unless character.match?(/[A-Za-z]/)

  base_position = character.upcase == character ? 'A'.ord : 'a'.ord
  (((character.ord - base_position + shift) % 26) + base_position).chr
end

def ceaser_cipher(word, shift)
  word.chars.map { |character| shift_character(character, shift) }.join
end

ceaser_cipher('War Secrets to my generals', 5)
