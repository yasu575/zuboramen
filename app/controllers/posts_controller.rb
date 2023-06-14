class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]

  def index
    @topping_list = Topping.all
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def new 
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    topping_list = params[:post][:topping].split(',')
    if @post.save
      @post.save_topping(topping_list)
      redirect_to posts_path, success: t('posts.create.success')
    else
      flash.now[:'danger'] = t('posts.create.fail')
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @post.toppings = @post.toppings
  end

  def edit
    @post = current_user.posts.find(params[:id])
    @topping_list = @post.toppings.pluck(:name).join(',')
  end

  def update
    @post = current_user.posts.find(params[:id])
    topping_list = params[:post][:topping].split(',')
    if @post.update(post_params)
      @post.save_topping(topping_list)
      redirect_to post_path(@post), success: t('defaults.message.updated')
    else
      flash.now['danger'] = t('defaults.message.not_updated')
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, success: t('defaults.message.deleted')
  end

  def likes
    @posts = current_user.likes_posts
  end

  def search
    @topping_list = Topping.all
    @topping = Topping.find(params[:topping_id])
    @posts = @topping.posts.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :topping, :image, :image_cache, :content)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end
