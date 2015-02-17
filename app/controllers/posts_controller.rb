class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to :root, success: "Your post was created."
    else
      flash.now[:danger] = "Your post could not be created. Please try again later."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.update(params[:id], post_params)

    if @post.save
      redirect_to post_path(params[:id]), success: "Your post was updated."
    else
      flash.now[:danger] = "Your post could not be updated. Please try again later."
      render :edit
    end
  end

  def destroy
    Post.destroy(params[:id])

    redirect_to :root, success: "Your post was deleted."
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
