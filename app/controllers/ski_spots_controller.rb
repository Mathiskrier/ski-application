class SkiSpotsController < ApplicationController
  def index
    @spots = SkiSpot.all
    #@regions = @spots.map(:region).uniq
    @regions = @spots.map{|spot| spot.region}.uniq
  end
end
