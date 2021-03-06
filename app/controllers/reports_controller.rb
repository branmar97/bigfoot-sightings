class ReportsController < ApplicationController
    before_action :set_report, only: [:show, :destroy]
    
    def index
        @reports = Report.all
        render json: ReportSerializer.new(@reports).serializable_hash[:data].map{|hash| hash[:attributes] }.to_json
    end

    def show
        render json: ReportSerializer.new(@report).serializable_hash[:data][:attributes].to_json
    end

    def create 
        report = Report.new(report_params)
        if report.save
            render json: ReportSerializer.new(report).serializable_hash[:data][:attributes].to_json
        else 
            render json: report.errors, status: 400
        end
    end

    def destroy
        @report.destroy
    end 

    private 

    def set_report
        @report = Report.find(params[:id])
    end 

    def report_params 
        params.require(:report).permit(:occurence, :city, :state, :vicinity, :conditions, :witnesses, :evidence, :account, :prints, :sounds, :additional_info)
    end
end
