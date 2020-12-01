class PostsController < ApplicationController
  def new
  end
  
  def create
    Post.create(title: params[:string], content: params[:text],account_id:current_account.id)
  end
  
  def edit
    @post=Post.find_by(id: params[:id])
  end
  
  def update
    @post=Post.find_by(id: params[:id])
    @post.content=params[:content]
    @post.save
    redirect_to(root_path)
  end
  
  def destroy
    @post=Post.find_by(id: params[:id])
    @post.destroy
  end
end
