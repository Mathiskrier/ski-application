class ReportsController < ApplicationController
  before_action :get_ski_spot
  #before_action :set_report
  def index
    @reports = @ski_spot.reports
    #@reports = Report.all
  end
  private
  def get_ski_spot
    @ski_spot = SkiSpot.find(params[:ski_spot_id])
  end
  #def set_report
  #  @report = Report.find(params[:id])
  #end
end
