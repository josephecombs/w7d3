class UsersController < ApplicationController
  def create
    @user = User.create!(params[:user])

    render :json => "User created successfully!"
  end

  def new
    @user = User.new
  end
end
