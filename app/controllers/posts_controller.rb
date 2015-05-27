class PostsController < ApplicationController
  before_filter :authenticate_user!  

  def index
    @posts = Post.order(id: :desc).page params[:page]
  end

  def new  
    @post = Post.new
  end

  def create  
    @post=Post.create(post_params)
    @post.user = current_user
      @post.save
    redirect_to posts_path  
  end

  def destroy  
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path  
  end

  def post_params  
    params.require(:post).permit!
  end

  def edit  
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
        redirect_to posts_path
    else
        render 'edit'
    end
  end  
end