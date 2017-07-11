class NongshimController < ApplicationController
  def index
    @room_id = params[:roomnum]
  end
end
