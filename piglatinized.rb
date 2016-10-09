# print "Escriba una palabra: "
# sentence = gets.chomp
# word = ARGV
sentence = ARGV

# def pig_latin_word(word)
#   if word =~ /^[aeiou]/
#     word + "way"
#   elsif word =~ /^[^aeiou]/
#     n_v = word.slice!(/^[^aeiou]+(?=[aeiou])/)
#     word + n_v + "ay"
#   else
#     p "Can't understand what you wrote"
#   end
# end
class PigLatin
# attr_accessor :sentence
@@pig_sentence = []#" "
# def initialize
#   @sentence = sentence 
# end

  def piglatinized(sentence) 
  # print "Escriba una palabra: "
  #     sentence = gets.chomp
  # p sentence_to_change#p = sentence#.dup#.delete(/\.\\.[\.]/)#.to_s
  
  sentence.each do |word| #separa el string en palabras
    if word =~ /^[aeiou]/ #cada palabra se evalua buscando una vocal al principio de dicha palabra
      @@pig_sentence << word + "way" + " " #sí encuentra una palabra con vocal al principio le agrega "way" y la manda al string vacío
    elsif word =~ /^[^aeiou]/ #si encuentra una palabra que no empieza con vocal
      n_v = word.slice(/^[^aeiou]+(?=[aeiou])/) #crea una variable con valor el pedazo en el que una o más no vocales se encuentran al principio de la palabra
      @@pig_sentence << word + n_v + "ay" + " "#.delete(word.slice(/^[^aeiou]+(?=[aeiou])/)) #con slice! se revalora la variable word y a eso se le agrega el valor del slice al final más "ay"
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
  @@pig_sentence
 end

 # def sentence_pig_form
 #  @@pig_sentence.each do |w| 
 #    if w =~ /^[aeiou]/
 #      w
 #    else
 #      w.slice!(/^[^aeiou]+(?=[aeiou])/)
 #      # w.delete(w.slice!(/^[^aeiou]+(?=[aeiou])/))
 #    end
 #  end
 # end
end 

# p piglatinized("hello how are you") == " ellohay owhay areway ouyay "
pig = PigLatin.new
#pig.sentence_to_change(sentence)
p pig.piglatinized(sentence) #== " ellohay owhay areway ouyay "
# p pig.sentence_pig_form
# p pig_latin_word("cruel") == "uelcray"  
# p pig_latin_word(word) #== "uelcray"  