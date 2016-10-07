# print "Escriba una palabra: "
# sentence = gets.chomp

def pig_latin_word(word)
  if word =~ /^[aeiou]/
    word + "way"
  elsif word =~ /^[^aeiou]/
    n_v = word.slice!(/^[^aeiou]+(?=[aeiou])/)
    word + n_v + "ay"
  else
    p "Can't understand what you wrote"
  end
end

 def pig_latin_sentence(sentence) 
  # print "Escriba una palabra: "
  #     sentence = gets.chomp
  pig_sentence = " "
  sentence.split.each do |word| #separa el string en palabras
    if word =~ /^[aeiou]/ #cada palabra se evalua buscando una vocal al principio de dicha palabra
      pig_sentence << word + "way" + " " #sí encuentra una palabra con vocal al principio le agrega "way" y la manda al string vacío
    elsif word =~ /^[^aeiou]/ #si encuentra una palabra que no empieza con vocal
      n_v = word.slice!(/^[^aeiou]+(?=[aeiou])/) #crea una variable con valor el pedazo en el que una o más no vocales se encuentran al principio de la palabra
      pig_sentence << word + n_v + "ay" + " " #con slice! se revalora la variable word y a eso se le agrega el valor del slice al final más "ay"
    else
      p "Can't understand you"
    end
  end
    pig_sentence #regresa el valor del string vacio
 end

p pig_latin_sentence("hello how are you") == " ellohay owhay areway ouyay "
p pig_latin_word("cruel") == "uelcray"  