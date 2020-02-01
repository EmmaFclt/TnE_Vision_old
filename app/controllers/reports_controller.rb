class ReportsController < ApplicationController

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
  end

  def index
    #put filters for each KPI and/or add option search
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
  end


  private

  def report_params
    params.require(:report).permit(:format, :submission_date, :source)
  end
end
