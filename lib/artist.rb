require "pry"

class Artist

  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name) #creates new song object
    @@songs << song #adds songs to a collection
    song.artist = self #calls artist= method on the song and sets it = to self - the artist
  end

  def self.song_count
    @@songs.length
  end
end
