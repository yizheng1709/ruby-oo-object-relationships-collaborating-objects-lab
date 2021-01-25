class Song 
    attr_accessor :artist, :name 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.new_by_filename(filename)
        file = filename.split(" - ") #parsing string name to array 
        song = self.new(file[1]) #initializing new song with 2nd element as the name attribute
        song.artist = Artist.new(file[0]) #initializing new artist with 1st element as the name attribute
        song #test asking to return the new song instance 
    end 

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end 
end 