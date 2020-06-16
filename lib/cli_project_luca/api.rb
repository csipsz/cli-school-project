require 'pry'
class API 
    BASE_URL = "https://the-one-api.herokuapp.com/v1/"
    KEY = "5DDdK9dPmf_GvAAdcHcx"

    GHIBLI = "https://ghibliapi.herokuapp.com/"

    #def self.get_characters 
        #response = RestClient.get(BASE_URL + "book")
        #puts response
    #end 
=begin
    def self.get_characters 
        response = RestClient.get(GHIBLI + "people")
        data = JSON.parse(response)
        data.each do |hash| 
            hash.each do |key, value|
            #binding.pry
            if key == 'name'
                puts value
            end 
            end 
        end
    end 
=end 

def self.get_characters 
    response = RestClient.get(GHIBLI + "people")
    data = JSON.parse(response)
    character_objects = []
    data.each do |hash| 
        character_objects << Character.new(hash)
    end 
    #binding.pry
    character_objects
end 

    def self.get_locations 
        response = RestClient.get(GHIBLI + "locations")
        data = JSON.parse(response)
        puts data.first
    end 

end 