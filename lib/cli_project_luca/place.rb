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

end 
