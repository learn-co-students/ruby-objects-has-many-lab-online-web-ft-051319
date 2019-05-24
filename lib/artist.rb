
class Artist
  attr_accessor :name

  @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def add_song(song)
    song.artist = self
  end

   def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

   def songs
    Song.all.map do |song|
      song.artist == self
    end
  end

   def self.song_count
     counter = 0
     self.all.each do |artist|
       counter += artist.songs.counter
     end
     counter
  end

 end
