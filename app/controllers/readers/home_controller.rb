module Readers
  class HomeController < ReadersController
    def index
      @posts = Post.most_recently_published
      @categories = Category.all
      @opinions = Post.category_opinion
    end

    def show
    end

  end
end
