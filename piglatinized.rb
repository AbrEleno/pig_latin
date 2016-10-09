sentence = ARGV

class PigLatin
@@pig_sentence = []

  def piglatinized(sentence) 
    sentence.each do |word| 
      if word =~ /^[aeiou]/ 
        @@pig_sentence << word + "way" + " " 
      elsif word =~ /^[^aeiou]/ 
        n_v = word.slice(/^[^aeiou]+(?=[aeiou])/) 
        @@pig_sentence << word + n_v + "ay" + " "
      else
        p "Can't understand you"
      end
    end
  @@pig_sentence.each do |wrd| 
      if wrd =~ /^[aeiou]/
       wrd
      else
       wrd.slice!(/^[^aeiou]+(?=[aeiou])/).delete(" ")
      end
    end
  @@pig_sentence.each {|w| print w}
  end
end 

pig = PigLatin.new
pig.piglatinized(sentence)   