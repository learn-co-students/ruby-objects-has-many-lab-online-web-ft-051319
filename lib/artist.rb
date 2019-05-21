class Artist

  attr_accessor :name

  @@all = []

  def initialize(artist_name)
    @name=artist_name
    @song=[]
  end

  def songs
    @song
  end

  def add_song(song)
    @song << song
    @@all << song
    song.artist=self
  end

  def add_song_by_name(name)
    song=Song.new(name)
    @song << song
    @@all << song
    song.artist=self
  end

  def self.song_count
    @@all.size
  end


end
