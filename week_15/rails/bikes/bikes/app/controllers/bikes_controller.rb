class BikesController < ApplicationController

  def index
    @bikes = [{name: "Ridley"}, {name: "Cannondale"}, {name: "Pinarello"}, {name: "Giant"}]
    render :json => @bikes
  end

end