class PostsController < ApplicationController
  def new
  end
  def create
    Post.create(title: params[:string], content: params[:text])
  end
end
