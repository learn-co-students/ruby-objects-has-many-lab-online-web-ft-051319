class Post
    attr_accessor :title, :author

    @@all = []
    
    def initialize(title, author= nil)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if author == nil
            nil
        else
           @author = self.author.name
        end
    end
end