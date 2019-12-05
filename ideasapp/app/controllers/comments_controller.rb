class CommentsController < ApplicationController
    def create 
        @idea = Idea.find(params[:idea_id])
        @comment = @idea.comments.create(comment_params)
        redirect_to ideas_path(@idea)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end 
end
