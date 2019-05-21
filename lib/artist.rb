class Artist

    attr_accessor :name, :songs

    @@songs = 0

    def initialize(name)
        @name = name
        @songs = []
    end
   
    def add_song(song)
        self.songs << song
        song.artist = self 
        @@songs += 1
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        @@songs
    end

end