class PostsController < ApplicationController
  def new
  end
  def create
    Post.create(content: params[:text])
  end
end
