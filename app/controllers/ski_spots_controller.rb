class SkiSpotsController < ApplicationController
  def index
    @spots = SkiSpot.all
  end
  def show
  end
end
