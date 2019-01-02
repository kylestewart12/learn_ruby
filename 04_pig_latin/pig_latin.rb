
def translate(phrase)
    vowels = ["a", "e", "i", "o", "u"]
    words = phrase.split
    pigged = []
    words.each do |word|
        if vowels.include?(word[0])
            piggy = word + "ay"

        elsif not vowels.include?(word[0]) and not vowels.include?(word[1]) and not vowels.include?(word[2])
            piggy = word[3, word.length] + word[0,3] + 'ay'

        elsif not vowels.include?(word[0]) and word[1,2]=="qu"
            piggy = word[3, word.length] + word[0,3] + "ay"

        elsif not vowels.include?(word[0]) and not vowels.include?(word[1]) or word[0,2]=="qu"
            piggy = word[2, word.length] + word[0,2] + 'ay'
        
        else
            piggy = word[1, word.length] + word[0] + "ay"
        end
        pigged.push(piggy)
    end
    piggified = pigged.join(" ")
end

