class DownloadsController < ApplicationController
    def report_file
        report = Report.find(params[:report_id])
        send_data(open(report.report_file.url(:original, false)).read, type: report.report_file_content_type, filename: report.report_file_file_name, disposition: 'attachment')
    end
end
