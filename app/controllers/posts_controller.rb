class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
   
    render json: @posts
  end

  # GET /posts/1
  def show
    @fixed_date = date(@post.created_at, @post.updated_at)
    render json: { post: @post, fixed_date: @fixed_date }
  end

  #GET 3 random posts
  def random 
    @random_posts = Post.all.sample(3)
    render json:  @random_posts
  end


  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  def public
    @public_posts = Post.where(private: false)
    render json: @public_posts
  end

  def userpost
    @user_posts = Post.where('user_id = ?', params[:user_id] )
    render json:  @user_posts}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :content, :author, :private, :tags, :user_id)
    end

    def date(created_at, updated_at) 
      {
        created: Time.at(created_at).strftime("%B %e, %Y at %I:%M %p"),
        edited: Time.at(updated_at).strftime("%B %e, %Y at %I:%M %p")
      }
    end
end
