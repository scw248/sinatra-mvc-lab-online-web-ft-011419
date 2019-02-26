class PigLatinizer
  
  attr_reader :string
  
   def initialize(string: nil)
    @string = string
   end
   
   def piglatinize
     alpha = ('a'..'z').to_a
     vowels = %w[a e i o u]
     consonants = alpha - vowels
     
     if string.count > 1
      string = string.split(" ")
     end

    string.each do |word|
      if vowels.include?(string[0])
        string + 'way'
      elsif consonants.include?(string[0]) && consonants.include?(string[1])
        string[2..-1] + string[0..1] + 'ay'
      elsif consonants.include?(string[0])
        string[1..-1] + string[0] + 'ay'
      else
        string + 'way'
      end
    end
   end
   
end