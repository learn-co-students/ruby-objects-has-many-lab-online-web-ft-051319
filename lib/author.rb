class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(a_post)
    @posts << a_post
    a_post.author = self
  end
  
  def add_post_by_title(post_title)
    a_post = Post.new(post_title)
    @posts << a_post
    a_post.author = self
  end
  
  def self.post_count
    Post.all.length
  end
  
end