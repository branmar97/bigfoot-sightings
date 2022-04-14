class ReportsController < ApplicationController
    def index
        @reports = Report.all
        render json: ReportSerializer.new(reports).serializable_hash.to_json
    end
end
