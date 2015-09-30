module FunWithStrings
  def palindrome?
    letters = self.downcase.gsub(/[^a-z]/, "")
    letters == letters.reverse
  end
  def count_words
    words = self.scan(/\w+/)
    words.each_with_object(Hash.new{|i|0}){|w,h| h[w.downcase]+=1}
  end
  def anagram_groups
    self.split.group_by{|w| w.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
