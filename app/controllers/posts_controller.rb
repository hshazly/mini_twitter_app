class PostsController < ApplicationController

  load_and_authorize_resource :only => :destroy

  def show
     @user = User.find_by_id(params[:user_id])
     @post = Post.find_by_id(params[:id])
  end

  def create
      @user = User.find_by_id(params[:user_id])
      @post = @user.posts.new(params[:post])
      authorize! :create, @post, :message => "You are not authorized to perform this step!" if current_user.id != @user.id
      @post.save
      redirect_to @user
  end

  def destroy
      @user = User.find_by_id(params[:user_id])
      post = @user.posts.find_by_id(params[:id])
      post.destroy
      redirect_to @user
  end
end
