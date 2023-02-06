class SkiSpotsController < ApplicationController
  def index
    @spots = SkiSpot.all
    #@regions = @spots.map(:region).uniq
    @regions = @spots.map{|spot| spot.region}.uniq
  end

  def show
    #the show action should show all the spots for the chosen region

    @spotsregion = SkiSpot.where(region: params[:id])
    #@spot = SkiSpot.find(params[:id])
  end
end
