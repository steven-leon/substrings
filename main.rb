dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)

    new_hash = Hash.new(0)
    word_down = word.downcase

        for dic_word in dictionary
            count = word_down.scan(dic_word).length

            new_hash[dic_word] = count if count > 0
    end
      return new_hash
end

puts "Ingresa una palabra"
word = gets.chomp

puts substrings(word, dictionary)
