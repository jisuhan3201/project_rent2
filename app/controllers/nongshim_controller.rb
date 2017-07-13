class NongshimController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @room_id = params[:roomnum]
  end
end
