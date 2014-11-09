class RoomLayoutsController < ApplicationController

  def index
    render :json => RoomLayout.all
  end

end
