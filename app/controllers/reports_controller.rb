class ReportsController < ApplicationController
    def index
        @reports = Report.all
        render json: ReportSerializer.new(reports).serializable_hash.to_json
    end

    private 

    def set_report
        @report = Report.find(params[:id])
    end 
end
