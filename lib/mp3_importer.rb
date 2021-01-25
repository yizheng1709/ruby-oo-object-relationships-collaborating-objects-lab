class MP3Importer  
    attr_accessor :path 
    def initialize(file_path)
        @path = file_path 
    end 

    def files
        array = Dir.entries(@path)
        array = array.select {|file| file.end_with?("mp3")}
    end 

    def import
        self.files.each {|file| Song.new_by_filename(file)}
    end 
end 