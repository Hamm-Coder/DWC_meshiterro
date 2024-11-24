class UsersController < ApplicationController
  def show
    @user = User.find(param[:id])
    @post_images = @user.post_images
  end

  def edit
    
  end
end
