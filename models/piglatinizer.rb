class PigLatinizer
  
  attr_reader :user_phrase
  
   def initialize(user_phrase: nil)
    @user_phrase = user_phrase
   end
   
  def piglatinize(user_phrase)
    if user_phrase.include?(" ")
      user_phrase.each do |word|
        translator(word)
      end
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


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end
end