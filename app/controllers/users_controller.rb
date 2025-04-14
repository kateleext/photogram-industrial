class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end

  def feed
    @user = current_user
    @photos = @user.feed
  end

  def discover
    @user = current_user
    @photos = @user.discover
  end
end
