class CurryController < ApplicationController
  def index
    @users = User.all
  end
  
  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/login_success")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:name]
      @password = params[:password]
      render("curry/login_fail")
      
    end
  end
  
  def login_success
  end
end
