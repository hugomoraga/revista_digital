module Readers
    class PostsController < ReadersController 
    
        def show
            @post = Post.published.friendly.find(params[:id])
        end

        def maqueta
        end
    end
end