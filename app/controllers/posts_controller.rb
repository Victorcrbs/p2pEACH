class PostsController < ApplicationController
   
    def main
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id]) 
    end

    def new
    
    end

    def create
        #render plain: params[:posts].inspect
        @post = Post.new(post_params)
        @post.save
        redirect_to @post
    end
        
    private def post_params
        params.require(:post).permit(:Obj,:Notes,:time,:tags)
    end
        
end
