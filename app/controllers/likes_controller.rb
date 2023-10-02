class LikesController < ApplicationController
    before_action :authenticate_agent!
    def create
        @post = Post.find(params[:post_id])
        @post.likes.create(agent: current_agent)
        redirect_to @post
    end

    def destroy
        @post = Post.find(params[:post_id])
        @like = @post.likes.find(params[:id])
        @like.destroy
        redirect_to @post
    end
end
