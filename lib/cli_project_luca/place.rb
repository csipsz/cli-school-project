class Place 

    attr_accessor :name, :climate, :terrain, :residents, :film, :id, :surface_water, :films, :url

    @@all = []

    def initialize(attributesHash)
        attributesHash.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end

    def self.all 
        @@all
    end 

    def get_movie_from_url
        url = self.films[0]
        response = RestClient.get(url)
        char_movie = JSON.parse(response)
        char_movie['title']
    end 

    
end 
