require 'pry'
class Artist 
  
  attr_accessor :name,:songs
  @@all = []
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  
  def add_song(song)
    song.artist = self 
    @songs << song
  end 
  
  def add_song_by_name(song_name) 
    song = Song.new(song_name) #create song 
    song.artist = self #associate song with artist 
     @songs << song  #add to song array 
  end 
  
  def self.song_count #self -exisitng artist 
   Song.all.count  #count artists songs 
  end 
 end 

