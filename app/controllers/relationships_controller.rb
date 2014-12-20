class RelationshipsController < ApplicationController

  def create
    @user = User.find_by_id(params[:user_id])
    @relationship = current_user.relationships.build(:followings_id => @user.id)
    @relationship.save
    redirect_to get_user(params[:user_id])
  end

  def destroy
    @relationship = Relationship.find_by_user_id_and_followings_id(current_user.id, params[:user_id])
    @relationship.destroy
    redirect_to get_user(params[:user_id])
  end

  private
  
  def get_user(id)
    User.find_by_id(id.to_i)
  end

end
