class UsersController < ApplicationController
  
  def new
    @user = User.new
    @nickname = current_user.nickname
    @diaries = current_user.diaries
  end
end
