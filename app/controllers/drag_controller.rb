class DragController < ApplicationController
    def user
    end

    private

    def drag_user_params
       params.require(:resource).permit(:id, :position)
    end
end
