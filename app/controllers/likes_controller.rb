class LikesController < ApplicationController
    
    def show
      @likes = current_user.likes.order("created_at DESC")
    end

    def create
        # binding.pry
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
