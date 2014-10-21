class UsersController < ApplicationController
  layout "application"
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User has been created successfully"
      redirect_to(:controller => 'access', :action => 'login')
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :email, :phone)
  end
end
