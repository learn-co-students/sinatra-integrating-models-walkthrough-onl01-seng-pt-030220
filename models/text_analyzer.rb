# Your TextAnalyzer model code will go here.
class TextAnalyzer 
  
  attr_reader :text 
  
  def initialize(text)
    @text = text.downcase
  end
  
  def count_of_words
    words = text.split(" ")
    words.count
  end
  
  def count_of_vowels
    text.scan(/[aeoui]/).count
  end
  
  def count_of_consonants
    text.scan(/[qwrtyplkjhgfdszxcvbnm]/).count
  end
  
  def most_used_letter
    sl = text.gsub(/[^a-z]/, '') #gets rid of spaces
    arr = sl.split(' ')
    arr1 = arr.uniq 
    arr2 = {}
    
    arr1.map do |c|
      arr2[c] = arr.count(c)
    end
    
    biggest = { arr2.keys.first => arr2.value.first }
    
    arr2.each do |key, value|
      if value > biggest.value.first 
        biggest = {}
        biggest[key] = value 
      end
    end
    
    biggest
  end
  
  
  
  
end