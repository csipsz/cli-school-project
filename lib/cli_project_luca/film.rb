class Film 
    attr_accessor :title, :description

    @@all = []

    def initialize(title, description)
        self.title = title
        self.description = description
        @@all << self
    end

    def self.all 
        @@all
    end 

end 