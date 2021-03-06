class Author #we can use the same logic as we did in song.rb & artist.rb
    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def posts
        Post.all.select{|post| post.author == self}
    end 

    def add_post(post)
        post.author = self 
        #applying the author method to post
    end

    def add_post_by_title(title)
        self.add_post(Post.new(title))
    end

    def self.post_count 
        Post.all.select{|post| post.author != nil}.length
    end

end 