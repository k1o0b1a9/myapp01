class PostsController < ApplicationController
  before_action :baria_account, only: [:edit, :destroy, :update]
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
    @post = Post.find_by(id: params[:id])
    @post.destroy #destroyメソッドを使用し対象のツイートを削除する。
    redirect_to(root_path)
  end
  
  private
   def baria_account
    unless Post.find(params[:id]).account.id.to_i == current_account.id
        redirect_to root_path(current_account)
    end
   end
end
