class PostsController < ApplicationController
    def index
      @posts = Post.all.order("created_at DESC")
      render layout: "sidebar"
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.save!
        redirect_to @post
      else
        render 'new'
      end
    end

    def show
      @post = Post.find(params[:id])
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy

      redirect_to posts_path, notice: 'Post was successfully deleted.'
    end

    private
    def post_params
      params.require(:post).permit(:name, :body)
    end
  end
