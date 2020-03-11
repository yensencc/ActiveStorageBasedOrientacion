class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :find_post!
  
  def find_post!
    @post = Post.find(params[:post_id])
  end
  def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:name, :body))
        @comment.user = current_user
        if @comment.save
          redirect_to post_path(@post)
        else
          render 'Comment not save !'
        end
        
  end
  
  def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        
        if @comment.user == current_user
        @comment.destroy
        redirect_to post_path(@post)
        else
          redirect_to post_path(@post), notice: "You are not Comment Owner"
        end
  end  
    
 def comment_params
  params.require(:comment).permit(:body)
 end
 
end