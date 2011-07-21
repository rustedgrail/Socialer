class SignUpController < ApplicationController

  def create
    @user = User.create params[:user]

    if @user.valid?
      flash[:notice] = "Success"
      render :index
    else
      flash[:notice] = @user.errors
      render :index
    end
  end

end
