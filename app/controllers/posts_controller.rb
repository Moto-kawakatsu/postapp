class PostsController < ApplicationController

    before_action :set_post, only: [:edit, :show, :destroy, :update ]
    before_action :move_to_index, except: [:index, :show, :search]
    
    def index
        @posts = Post.includes(:user).order("created_at DESC")
    end

    def new
        @post = Post.new
    end

    def create
        if Post.create(post_params)
            redirect_to root_path
        else
            render :new
        end
    end

    def destroy
        if @post.destroy
            redirect_to posts_path
        end
    end
    
    def edit
    end
    
    def update
        if @post.update(post_params)
            redirect_to posts_path
        end
    end

    def show
        @comment = Comment.new
        @comments = @post.comments.includes(:user).order("created_at DESC").limit(5)
    end

    def search
        @posts = Post.search(params[:keyword])
    end
      
    private

    def post_params
        params.require(:post).permit(:image, :text, :title).merge(user_id: current_user.id)
    end

    def set_post
        @post = Post.find(params[:id])
    end

    def move_to_index
        unless user_signed_in?
          redirect_to action: :index
        end
    end

end
