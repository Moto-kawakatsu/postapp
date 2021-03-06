class LikesController < ApplicationController
    
    def show
      @likes = current_user.likes.order("created_at DESC")
    end
    
    def pop_picture
      @ids = Like.group(:post_id).count(:post_id)
      @posts = Post.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    end

    def create
      @like = current_user.likes.create(post_id: params[:post_id])
      redirect_back(fallback_location: root_path)
    end
  
    def destroy
        @post = Post.find(params[:post_id])
        @like = current_user.likes.find_by(post_id: @post.id)
        @like.destroy
        redirect_back(fallback_location: root_path)
    end

  private

  def like_params
    params.require(:like).permit(
        :post_id, 
        :user_id, 
    ).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end
