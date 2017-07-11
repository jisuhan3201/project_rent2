class Science2Controller < ApplicationController
  def index
    @room_id = params[:roomnum]
  end
end
