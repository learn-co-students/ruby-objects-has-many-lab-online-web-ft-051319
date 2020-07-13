class Song

  attr_accessor :name, :artist

  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist==nil
    #this is for a situation where the song has no associated artist
      nil
    else
      self.artist.name
    end
    #self.artist calls the Artist instance, once we have the artist instance we need to call the #name method in the Artist class
    #to get the name of the artist
  end

end
