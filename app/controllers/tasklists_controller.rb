class TasklistsController < ApplicationController
    def index
        @tasklists = Tasklist.all
    end
    
    def show
        @tasklist = Tasklist.find(params[:id])
    end 
    
    def new
        @tasklist = Tasklist.new
    end 
    
    def edit
        @tasklist = Tasklist.find(params[:id])
    end 
    
    def create
        @tasklist = Tasklist.new(tasklist_params)
        
        if @tasklist.save
            flash[:success] = 'Tasklistが正常に投稿されました'
            redirect_to @tasklist
        else
            flash.now[:danger] = 'Tasklistが投稿されませんでした'
            render :new
        end
    end 
    
    def update
    end 
    
    def destroy
    end 
    
    private
    
    # Strong Parameter
    def tasklist_params
        params.require(:tasklist).permit(:content)
    end
end
