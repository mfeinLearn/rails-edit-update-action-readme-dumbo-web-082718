class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    # byebug
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  # add edit and update methods here
  def edit
    # Now that the edit view template
    # will have access to the Post object
    @post = Post.find(params[:id])
  end

  def update
    # raise params.inspect
    @post = Post.find(params[:id])
    @post.update(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
    @post.save
  end
end
