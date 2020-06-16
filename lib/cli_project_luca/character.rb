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
    
end 