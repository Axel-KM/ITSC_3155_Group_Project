class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id]) #retrieves current article and saves to @article obj
        @comment = @article.comments.create(comment_params) #creates the @comments obj with the params from the view
        redirect_to article_path(@article) #redirects back to page with new article and new comments
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
