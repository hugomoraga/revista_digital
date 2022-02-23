module Readers
  class HomeController < ReadersController
    def index 
      @q = Post.ransack(params[:q])
      @posts = @q.result(distinc: true)
      # @posts = Post.most_recently_published
      @categories = Category.all
      @opinions = Post.category_opinion
    end



    def show
      @post = Post.published.friendly.find(params[:id])

    end

  end
end
