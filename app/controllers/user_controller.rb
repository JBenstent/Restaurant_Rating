class UserController < ApplicationController
  def index
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user
      flash[:errors] = ['User already exists']
      redirect_to '/user/index'
    else
      @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
      redirect_to '/'
    end
  end

  def login

  end

end
