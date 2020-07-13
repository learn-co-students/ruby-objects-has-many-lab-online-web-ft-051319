class Post 
  
  @@post_count = 0
  @@all = []
  
  attr_accessor :author, :title
  
  def initialize(title)
    @title = title
    @@post_count += 1
    @@all << self
   end
   
  def self.post_count 
    @@post_count
  end
  
  def self.all
    @@all 
  end
  
  def author_name 
    author.name if author 
  end
  
end 