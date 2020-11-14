class CommentsController < ApplicationController
    
    def index
        @post = Post.find(params[:post_id])
        @comments = @post.comments.order("created_at DESC")
    end

    def create
        comment = Comment.create(comment_params)
        redirect_to "/posts/#{comment.post.id}"
    end
    
    def destroy
        @comment = Comment.find(params[:id])
        @post = @comment.post
        if @comment.destroy
           redirect_to post_path(@post)
        else
            render :show
        end       
    end

    private

    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
    end
end
