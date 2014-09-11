class CommentsController < ApplicationController
	
	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

	def create
    	@article = Article.find(params[:article_id])			#se busca el articulo por el article_id
    	@comment = @article.comments.create(comment_params)		#se crea el comentario usando el articulo encontrado
    	redirect_to article_path(@article)						#se redirige a
  	end
 	
 	def destroy
	    @article = Article.find(params[:article_id])			#se busca el comentario por el id
	    @comment = @article.comments.find(params[:id])			#se busca el comentario con el id de comentario
	    @comment.destroy										#se elimina de la base de datos
	    redirect_to article_path(@article)
	end

  	private
    	def comment_params
      		params.require(:comment).permit(:commenter, :body)
    	end
end
