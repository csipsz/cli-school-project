
class API 
    BASE_URL = "https://the-one-api.herokuapp.com/v1/"
    KEY = "5DDdK9dPmf_GvAAdcHcx"

    def self.get_characters 
        response = RestClient.get(BASE_URL + "book")
        puts response
    end 
end 