class HomeController < ApplicationController
  def top
    @posts=Post.all
  end

  def about
  end
  
  def contact 
  end
end
