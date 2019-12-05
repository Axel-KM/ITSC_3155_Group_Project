class IdeasController < ApplicationController
    def index
        @idea = Idea.all
    end
    
    def new
        @idea = Idea.new
    end
        
    def create
        #:idea is a form filled out by the user

        @idea = Idea.new(ideas_params) 
        
        if @idea.save #saves the filled out form to the db
            redirect_to idea_path(@idea)
        else
            render 'new' #reloads new page if can't save
        end 
    end
    
    def music
        if @idea = Idea.where(labelled: 'Music')
            render 'index'
        else
            @idea = Idea.all
        end
    end
    
    def art
        if @idea = Idea.where(labelled: 'Art')
            render 'index'
        else
            @idea = Idea.all
        end
    end
    
    def movies
        if @idea = Idea.where(labelled: 'Movies')
            render 'index'
        else
            @idea = Idea.all
        end
    end
    
    def theatre
        if @idea = Idea.where(labelled: 'Theatre')
            render 'index'
        else
            @idea = Idea.all
        end
    end
    
    def show
        @idea = Idea.find(params[:id]) 
    end
    
    def edit
        @idea = Idea.find(params[:id])
    end
    
    def uprank
        
        @idea = Ideas.find(params[:id])
        @idea.total_rank += 1;
        
        if @idea.update(ideas_params)
            render 'index'
        else
            @idea = Idea.all
        end
    end
    
    def downrank
        @idea = Ideas.find(params[:id])
        @idea.total_rank -= 1;
        if @idea.update(ideas_params)
            render 'index'
        else
            @idea = Idea.all
        end
    end
    
    def totalrank
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
                                     :labelled,
                                     :rank_up,
                                     :rank_down,
                                     :total_rank)
    end
    
end