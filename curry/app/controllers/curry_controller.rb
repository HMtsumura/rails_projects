class CurryController < ApplicationController
  def index
    
  end  
  
  def show
    
  end
  
  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/posts/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:name]
      @password = params[:password]
      render("/curry/index")
      
    end
  end
  

  
  def edit
    @post = Post.find_by(id: params[:id])
  end  
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/login_success")
    else
      render("curry/edit")
    end  
  end  
end
