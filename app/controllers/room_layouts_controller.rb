class RoomLayoutsController < ApplicationController

  #respond_to :json

  def index
    render :json => RoomLayout.all
  end

end
