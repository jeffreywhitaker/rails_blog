class PostsController < ApplicationController

  def index
  end

  def new
    @Post = Post.new
  end

  def create
    @Post = Post.new(post_params)

    if @Post.save
      redirect_to @Post
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
