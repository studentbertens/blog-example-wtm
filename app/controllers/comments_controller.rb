class CommentsController < ApplicationController


  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:message, :post_id)
    end
end

#  def destroy
#     @post = Post.find(params[:post_id])
#     @comment = @post.comments.find(params[:id])
#     @comment.destroy
#     redirect_to post_path(@post)
#   end

  def destroy
    @comment = @comments.find params[:id]
    if @comments.destroy
      redirect_to comments_path, notice: "Se ha eliminado correctamente"
    else
      redirect_to comments_path(@comments), error: "No se ha podido eliminar"
    end
  end