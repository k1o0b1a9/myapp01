class HomeController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  def top
    @posts=Post.all
  end
  
  def show
    @post = Post.find_by(id:params[:id])
  end
  
  def about
  end
  
  def contact 
  end
end
