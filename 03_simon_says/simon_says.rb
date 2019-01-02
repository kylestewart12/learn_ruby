def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, times=2)
    phrase_space = phrase + " "
    phrase_space*(times-1) + phrase
end

def start_of_word(word, number=1)
    word[0..number-1]
end

def first_word(phrase)
    words = phrase.split
    words[0]
end

def titleize(phrase)
    words = phrase.split
    caps = []
    little_words = ["and", "or", "the", "of", "it", "over"]
    words.each_with_index do |word, i|
        if i==0
            caps.push(word.capitalize) 
        elsif not little_words.include?(word)
            caps.push(word.capitalize)
        else
            caps.push(word)
        end
    end
    capital = caps.join(" ") 
end
