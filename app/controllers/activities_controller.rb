class ActivitiesController < ApplicationController
def index 
 activity=Activity.all 
 render json: activity, only: [:id, :name, :difficulty]
end
def destroy 
activity=Activity.find_by(id: params[:id])
if activity 
    activity.destroy 
    render json: {}, status: :ok 
else 
    render json: {error: "Activity not found"}, status: :not_found 
end
end 
end
