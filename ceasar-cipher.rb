def ceasar_cipher(text, key)
    alphabet = [*('a'..'z')]
    indices = []
    text.chars.each do |character| 
        if alphabet.include?(character.downcase)    
            # move down index according to key
            convertedIndex = (alphabet.index(character.downcase) + key.to_i)
            if convertedIndex > 25
                convertedIndex -= 26
            end

            # get the character of the converted index
            convertedCharacter = alphabet[convertedIndex]

            # capitalize character if it was capitalize
            if character == character.upcase
                convertedCharacter = convertedCharacter.upcase
            end

            indices.push(convertedCharacter)
        else
            indices.push(character)
        end
    end
    indices.join()
end

puts ceasar_cipher('What a String!', 4)