module Readers
    class SearchController < ReadersController
      def index
        @q = Post.ransack(params[:q])
        @posts = @q.result(distinct: true)
      end
  
      def show
        @post = Post.published.friendly.find(params[:id])

      end
  
    end

end
  