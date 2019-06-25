class PigLatinizer 

    def piglatinize_word(word)
        vowels = ['a', 'e', 'i', 'o', 'u']
        
        if vowels.include?(word[0].downcase)
            return word + "way"
        else
            word.chars.each_with_index do |char, i|
                if vowels.include?(char)
                    first_part = word[0...i]
                    rest = word[i..-1]
                    return rest + first_part + "ay"
                end
            end
        end
    end

    def piglatinize(phrase)
        if phrase.split.length < 2
            return piglatinize_word(phrase)
        else
            return phrase.split.map { |word| piglatinize_word(word) }.join(" ")
        end
    end


end