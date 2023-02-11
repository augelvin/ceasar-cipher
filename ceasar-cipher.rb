def ceasar_cipher(text, key)
    alphabet = [*('a'..'z')]
    indices = []
    text.downcase.chars.each do |character| 
        if alphabet.include?(character)    
            indices.push(alphabet.index(character))
        else
            indices.push(character)
        end
    end
    indices
end



puts ceasar_cipher('What a string!', 2)