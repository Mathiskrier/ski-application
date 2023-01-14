class ReportsController < ApplicationController
  before_action :get_ski_spot
  #before_action :set_report
  def index
    @reports = @ski_spot.reports
    #@reports = Report.all
  end
  def new
    @report = Report.new
    #@report = @ski_spot.reports.new
  end
  def create
    @report = Report.new(report_params)
    @report.user_id = current_user.id
    @report.ski_spot_id = @ski_spot.id
    if @report.save
      redirect_to ski_spot_reports_path, notice: "Report was successfully created."
    else
      render :new
    end
  end

  private
  def get_ski_spot
    @ski_spot = SkiSpot.find(params[:ski_spot_id])
  end
  def report_params
    params.require(:report).permit(:comment)
  end
  # def set_report
  #   @report = Report.find(params[:id])
  # end
end
