class ArticlesController < ApplicationController
    
    def index
        @articles = Article.all
    end

    
    def show
        @article = Article.find(params[:id])
    end
    
    def new
        @article = Article.new
    end 
    
    
    
    def create
        #here we will load parameters to a db
        
        #simply prints text
        #render plain: params[:article].inspect
        
        #accepts parameters but raises forbidden attr error
        #@article = Article.new(params[:article])
        
        #proper control params
        #@article = Article.new(params.require(:article).permit(:title, :text))
        
        #better abstraction than above, uses private method
        @article = Article.new(article_params)
        
        
        
        #returns boolean indicating true if saved
        #@article.save
        #redirect_to @article  #issues a new browser request
        
        #better than above, check if something is saved and redirect to it
        if @article.save 
            redirect_to @article
        else
            render 'new' #reloads new page if can't save
        end        
        
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    #used when updating a record that already exists
    def update
        
        @article = Article.find(params[:id])
        
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
    
end

private #gives us the parameters in a reusable way for the controller
    def article_params
        params.require(:article).permit(:title, :text)
    end