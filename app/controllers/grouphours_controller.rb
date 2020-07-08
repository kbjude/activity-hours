class GrouphoursController < ApplicationController
    def index
        @grouphours = Grouphours.all
      end
    
      def new
        @grouphour = current_user.grouphour.build
      end
    
      def create
        @grouphour = current_user.grouphour.build(grouphour_params)
        @grouphour.save
        if @grouphour.save
          flash.now[:succes] = 'Hour successful created'
          redirect_to @grouphour
        else
          render :new
        end
      end
    
      def show
        @grouphour = Grouphour.find_by_id([:hour_id])
      end
    
      private
    
      def grouphour_params
        params.require(:grouphour).permit(:group_id, :hour_id)
      end
end
