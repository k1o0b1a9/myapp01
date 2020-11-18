class HomeController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  def top
    @posts=Post.all
  end

  def about
  end
  
  def contact 
  end
end
