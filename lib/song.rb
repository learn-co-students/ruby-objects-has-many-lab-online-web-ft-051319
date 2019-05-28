require "pry"

class Song
  attr_accessor :artist, :name #creating relationship with artist class

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def name
    @name
  end

  def artist_name
    artist.name if artist
  end

  def self.all
    @@all
  end

end
