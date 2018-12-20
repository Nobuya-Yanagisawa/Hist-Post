class PostsController < ApplicationController
  def home
    @posts = Post.page(params[:page]).reverse_order
  end

  def new
    @post = Post.new
    @tag = @post.tags.build
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_path
    else
      @post = Post.new
      @tag = @post.tags.build
      render :new
    end
  end

  def index
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment = @post.comments.page(params[:page])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def edit_image_details
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:post_title, :top_explanation, :post_image, :post_image_width, :post_image_height,
                          image_details_attributes: [:id, :detail, :value_x, :value_y, :_destroy],
                          tags_attributes: [:id, :tag_name, :_destroy])
  end
end
