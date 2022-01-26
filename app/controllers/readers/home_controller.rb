module Readers
  class HomeController < ReadersController
    def index
      @posts = Post.published.most_recently_published
      @categories = Category.all
    end

    def show
    end
  end
end
