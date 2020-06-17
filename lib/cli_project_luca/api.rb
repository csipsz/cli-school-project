require 'pry'
class API 

    GHIBLI = "https://ghibliapi.herokuapp.com/"

    def self.get_characters 
        response = RestClient.get(GHIBLI + "people")
        char_data = JSON.parse(response)
        char_data.map do |hash| 
        Character.new(hash)
        end 
    end 

    def self.get_places 
        response = RestClient.get(GHIBLI + "locations")
        place_data = JSON.parse(response)
        place_data.map do |hash| 
            Place.new(hash)
         end 
    end 

    def self.get_films 
        response = RestClient.get(GHIBLI + "films")
        film_data = JSON.parse(response)
        film_data.map do |hash| 
            title = hash['title']
            description = hash['description']
            director = hash['director']
            producer = hash['producer']
            release_date = hash['release_date']
            Film.new(title, description, director, producer,release_date)
        end 
        
    end 
end 
