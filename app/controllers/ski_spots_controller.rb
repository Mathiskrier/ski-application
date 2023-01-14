class SkiSpotsController < ApplicationController
  def index
    @spots = SkiSpot.all
  end
  def show
    @spot = SkiSpot.find(params[:id])
  end
end
