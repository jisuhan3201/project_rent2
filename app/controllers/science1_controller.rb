class Science1Controller < ApplicationController
  def index
    @room_id = params[:roomnum]
  end
end
