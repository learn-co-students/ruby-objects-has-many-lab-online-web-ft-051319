class Author

  attr_accessor :name, :posts

  @@all = []

  def initialize(author_name)
    @name=author_name
    @posts=[]
  end

  def add_post(post)
    @posts << post #here we're adding post where the argument is an instance of post (compare to add_post_by_title)
    @@all << post
    post.author=self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post #in add_post_by_title we're also adding the instance to @posts but we're creating a new instance
                   #in the method itself first
    @@all << post
    post.author=self
  end

  def self.post_count
    @@all.size
  end



end
