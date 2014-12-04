class RoomLayoutsController < ApplicationController

  def index
    decorated = RoomLayoutDecorator.decorate_collection(RoomLayout.all)
    render :json => decorated
  end

end
