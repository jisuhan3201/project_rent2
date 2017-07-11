class BuildingController < ApplicationController
  before_action :authenticate_user!

  def liberal
    rooms = []
    for i in (101..140)
      rooms << i
    end
    @rooms = rooms
  end

  def buiseness
    rooms = []
    for i in (101..140)
      rooms << i
    end
    @rooms = rooms
  end

  def science1
    rooms = []
    for i in (101..140)
      rooms << i
    end
    @rooms = rooms
  end

  def science2
    rooms = []
    for i in (101..140)
      rooms << i
    end
    @rooms = rooms
  end

  def nongshim
    rooms = []
    for i in (101..140)
      rooms << i
    end
    @rooms = rooms
  end
end
