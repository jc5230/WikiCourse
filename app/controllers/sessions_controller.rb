class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]


  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.password==params[:password]
       session[:user_id] = @user.id

    else
       redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end

  def page_requires_login
  end

end
