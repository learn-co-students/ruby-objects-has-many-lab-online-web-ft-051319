require "pry"

class Post
  attr_accessor :author, :title #creating relationship with artist class

  @@all = []

  def initialize(title)
    @@all << self
    @title = title
  end

  def title
    @title
  end

  def author_name
    author.name if author
  end

  def self.all
    @@all
  end

end
