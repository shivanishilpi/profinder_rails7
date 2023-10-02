class LikesController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @post.likes.create
        redirect_to @post
    end

    def destroy
        @post = Post.find(params[:post_id])
        @post.likes.last&.destroy
        redirect_to @post
    end
end
