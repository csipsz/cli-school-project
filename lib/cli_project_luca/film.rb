class Film 
    attr_accessor :title, :description, :director, :producer, :release_date

    @@all = []

    def initialize(title, description, director, producer, release_date)
        self.title = title
        self.description = description
        self.director = director
        self.producer = producer
        self.release_date = release_date
        @@all << self
    end

    def self.all 
        @@all
    end 

end 