class UserController < ApplicationController
  def index
    if session[:user_id]
      redirect_to "/"
    end
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user
      flash[:errors] = ['User already exists']
      redirect_to '/user/index'
    else
      @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if !@user
      flash[:errors] = ['Login credentials are invalidvagrant ']
      redirect_to '/user/index'
    elsif @user.password != params[:password]
      flash[:errors] = ['Invalid password']
      redirect_to '/user/index'
    else
      session[:user_id] = @user.id
      redirect_to "/"
    end
  end

  def sessionclear
    session.clear
    redirect_to "/user/index"
  end

end
