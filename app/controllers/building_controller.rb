class BuildingController < ApplicationController
  def number
    redirect_to "/building/#{params[:building_num]}"
  end
end
