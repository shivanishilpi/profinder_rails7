class NotesController < ApplicationController
    # before_action :authenticate_agent!, except: :index
    before_action :load_notable

    def create
        @note = @notable.notes.new(notable_id: params[:notable_id], notable_type: params[:notable_type], title: params[:title], body: params[:body])
        if @note.save
            redirect_to :back, notice: "Note created."
        else 
            render :new
        end
    end 

    def destroy
        @note = Note.find(params[:id])
        @note.destroy
    end 

    def update
        @note = Note.find(params[:id])
        if @note.update(note_params)
            redirect_to @note
        else
            render :edit
        end
    end 

    private
     
    def load_notable
        if params[:user_id]
            @notable = User.find(params[:user_id])
        end
    end

    def note_params
       params.require(:note).permit(:title, :body) 
    end
end
