class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @images = Photo.where(:user_id => params[:id].to_f)
    @users = User.all
    @likes = Like.where(:photo_id => @images)
    @comments = Comment.where(:photo_id => @images)
    @time = Time.now

  end

end
