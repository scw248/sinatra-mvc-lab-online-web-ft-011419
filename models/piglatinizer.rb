class PigLatinizer
   
  def piglatinize(user_phrase)
    if user_phrase.include?(" ")
      pig_phrase = []
      user_phrase.split(" ").each do |word|
        pig_phrase << translator(word)
      end
      pig_phrase.join(" ")
    else
      translator(user_phrase)
    end
  end
    
  def translator(word)
    non_pig_latin_words = ["i", "I", "me", "Me", "to", "To", "too", "Too", "a", "A", "an", "An", "in", "In", "and", "And", "on", "On"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    if non_pig_latin_words.include?(word)
      word + "way"
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      
    while !vowels.include?(word[0])
      consonants << word[0]
      word = word.split("")[1..-1].join
    end
    word + consonants + 'ay'
    end
  end

end