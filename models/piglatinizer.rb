class PigLatinizer
  
  attr_reader :string
  
   def initialize(string: nil)
    @string = string
   end
   
   def piglatinize(string)
      phrase = []
      if string.include? " "
        phrase = string.split(" ").map do |word|
        rearrange(word)
        end
          phrase = phrase.join(" ")
      else
        phrase = rearrange(string)
      end
        phrase
   end
   
   def rearrange(word)
    translation = word.split(' ').map do |w|
    vowels = %w(a e i o u)
    word = w.downcase.split('')

    if vowels.include? word[0]
      "#{word.join}way"
    else
      "%s%say" % [word[1..-1].join, word[0]]
    end
  end

#   def rearrange(word) 
#     vowels = ["a", "e", "i", "o", "u", "y"]
#     new_word = word
    
#     word.each_char do |char|
#       if char == "u" && new_word[-1] == "q"
#         new_word << "u"
#         new_word.slice!(0)
#       next
#       elsif vowels.include? char
#         new_word << "ay"
#         break
#       else
#         new_word << char
#         new_word.slice!(0)
#       next
#       end
#   end
#   new_word
# end

   
end