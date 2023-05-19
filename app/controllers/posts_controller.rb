class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]

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

  def edit
    @board = current_user.boards.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, success: t('defaults.message.updated')
    else
      flash.now['danger'] = t('defaults.message.not_updated')
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, success: t('defaults.message.deleted')
  end

  private

  def post_params
    params.require(:post).permit(:title, :topping, :tag, :image, :image_cache, :content)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end
