class CurryController < ApplicationController
  def index
  end  
  def about
  end
  
  def login_form
  end

  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/posts/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:name]
      @password = params[:password]
      render("/curry/index")
      
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end    
  
  def new
    @user = User.new  
  end 
  
  def create
    @user = User.new(
      name: params[:name],
      password: params[:password],
      email: params[:email]
      )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "新規のユーザーを登録しました"
      redirect_to("/posts/index")
    else
      render("curry/new")
    end  
  end
  
end
