class ReportsController < ApplicationController
    def index
        @reports = Report.all
        render json: ReportSerializer.new(@reports).serializable_hash[:data].map{|hash| hash[:attributes] }.to_json
    end

    def show
        render json: ReportSerializer.new(@report).serializable_hash[:data][:attributes].to_json
    end

    private 

    def set_report
        @report = Report.find(params[:id])
    end 
end
