require "pry"

class Author

  attr_accessor :name, :title

  @@posts = []

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title) #creates new song object
    @@posts << post #adds songs to a collection
    post.author = self #calls artist= method on the song and sets it = to self - the artist
  end

  def self.post_count
    @@posts.length
  end
end
