module Readers
  class HomeController < ReadersController
    def index
      @posts = Post.most_recently_published
      @categories = Category.all
      @opinions = Post.category_opinion
    end

    def search
      @q = Post.ransack(params[:q])
      @posts =  @q.result(distinct: true)
    end


    def show
      @post = Post.published.friendly.find(params[:id])

    end

  end
end
