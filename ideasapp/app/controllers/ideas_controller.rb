class IdeasController < ApplicationController
    def index
        @idea = Idea.all
    end
    
    def new
    end
        
    def create
        #:idea is a form filled out by the user

        @idea = Idea.new(ideas_params) 
        
        @idea.save #saves the filled out form to the db
    end
    
    def show
        @idea = Idea.find(params[:id]) 
    end
    
    def edit
        @idea = Idea.find(params[:id])
    end
    
    def update
        
        @idea = Idea.find(params[:id])
        
        if @idea.update(ideas_params)
            redirect_to @idea
        else
            render 'edit'
        end
    end
    
    def destroy
        @idea = Idea.find(params[:id])
        @idea.destroy
        redirect_to ideas_path
    end 
    
    
    
    def ideas_params
        params.require(:idea).permit(:title, 
                                     :text, 
                                     :type, 
                                     :labelled)
    end
    
end