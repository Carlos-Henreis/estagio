class TravelsController < ApplicationController
  # GET /api/v1/travels
 def index
  @travels = Travel.all
  render json: @travels
 end
# POST /api/v1/travels
 def create
   @travel = Travel.new(travel_params)
   if @travel.save
     render json: @travel, status: 201
   else
     render json: @travel.errors, status: 299
   end
 end

private
 def travel_params
   params.require(:travel).permit(:name, :phone, :dateFrom, :dateTo, :origin, :destination, :numberp)
 end
end
