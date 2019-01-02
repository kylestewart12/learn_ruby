class Book
    attr_accessor :title
    def title=(title)
        exceptions = ["a", "the", "of", "to", "in", "on", "and", "or", "an"]
        words = title.split
        caps = []
        words.each_with_index do |word, i|
            if not exceptions.include?(word) or i==0
                caps.push(word.capitalize)
            else
                caps.push(word)
            end
        end
        @title = caps.join(" ")
    end
end

moby = Book.new
moby.title = "moby dick"
puts moby.title