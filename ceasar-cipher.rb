def ceasar_cipher(text, key)
    alphabet = [*('a'..'z')]
    indices = []
    text.downcase.chars.each do |character| 
        if alphabet.include?(character)    
            convertedIndex = (alphabet.index(character) + key.to_i)
            if convertedIndex > 25
                convertedIndex -= 26
            end
            indices.push(convertedIndex)
        else
            indices.push(character)
        end
    end
    indices
end



puts ceasar_cipher('What a string!', 2)