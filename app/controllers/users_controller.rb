class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @photo = Photo.all
    @images = Photo.where(:user_id => params[:id].to_f)
    @likes = Like.where(:photo_id => @images)
    @comments = Comment.where(:photo_id => @images)
    @time = Time.now


  end

   def likes


    @likes = current_user.liked_photos
    @comments = Comment.where(:photo_id => @images)
    @time = Time.now
    @images = Photo.where(:user_id => params[:id].to_f)
  end


end
