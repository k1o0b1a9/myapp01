class PostsController < ApplicationController
  def new
  end
  def create
    Post.create(title: params[:string], content: params[:text],account_id:current_account.id)
  end
end
