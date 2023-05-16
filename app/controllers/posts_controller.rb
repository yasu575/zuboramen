class PostsController < ApplicationController
  def index
    @posts = Post.all.includes(:user).order(created_at: :desc)
  end

  def new 
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, success: t('posts.create.success')
    else
      flash.now[:'danger'] = t('posts.create.fail')
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :topping, :tag, :image, :content)
  end
end
