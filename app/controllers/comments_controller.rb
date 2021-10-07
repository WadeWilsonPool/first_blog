class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @comment_section = @post.comments.create(params[:comment]).permit(:name, :comment))
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment_section = @post.comments.find(params[:id])
        @comment_section.destroy
        redirect_to post_path(@post)
    end

end
