class RoomLayoutsController < ApplicationController

  # Hack
  skip_before_action :verify_authenticity_token

  def index
    decorated = RoomLayoutDecorator.decorate_collection(RoomLayout.all)
    render :json => decorated
  end

  def create
    binding.pry
  end

end
