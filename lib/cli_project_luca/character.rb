class Character 
    attr_accessor :name, :age, :films, :gender, :species, :eye_color, :hair_color, :id, :url
    @@all = []
    def initialize(attributesHash)
        attributesHash.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end

    def self.all 
        @@all
    end 

    def character_movie
        url = self.films[0]
        response = RestClient.get(url)
        char_movie = JSON.parse(response)
        char_movie['title']
    end 
    
end 

