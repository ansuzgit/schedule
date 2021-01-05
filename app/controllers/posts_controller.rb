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
      flash[:success] = "スケジュールを登録しました"
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "スケジュールを編集しました"
      redirect_to '/'
    else
      render 'edit'
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "スケジュールを削除しました"
    redirect_to '/'
  end
  
  private
  
    def post_params
      params.require(:post).permit(:title, :start, :finish,
      :all_day,:memo)
    end
  
end
