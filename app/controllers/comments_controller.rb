class CommentsController < ApplicationController


  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.destroy
      redirect_to post_path(@post), notice: "Se ha eliminado correctamente"
    else
      redirect_to post_path(@post), error: "No se ha podido eliminar"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:message, :post_id)
    end
end