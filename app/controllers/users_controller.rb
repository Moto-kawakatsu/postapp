class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        @nickname = user.nickname
        @email = user.email
        @posts = user.posts
     end
     
end
