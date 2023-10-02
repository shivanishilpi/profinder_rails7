class PlantPdfWorker
    include Sidekiq::Worker

    def perform(plant_id)
        plant = Plant.find(plant_id)
        file = WickedPdf.new.pdf_from_string(
            render_to_string(template: 'plant/profile.pdf.erb', locals: { plant: @plant }))
          send_data(file, filename: "file_name.pdf", type: 'application/pdf')

    end
end


# def perform(course_id, user_id, base_url, base_url_host)
#     course = Course.find(course_id)
#     generate_and_attach(course, user_id, base_url, base_url_host)
#   end

#   private

#   def generate_and_attach(course, user_id, base_url, base_url_host)
# #     av = ActionController::Base.new()
# #     pdf_html = av.render_to_string(template: 'courses/generate_report.html.erb', layout: 'pdf_layout', :locals => {:@course => course})
# #     absolute_html = Grover::HTMLPreprocessor.process(pdf_html, base_url+base_url_host+"/", base_url)
# #     pdf = Grover.new(absolute_html).to_pdf
# #     @pdf_file_attachment = course.pdf_file_attachments.new()
# #     @pdf_file_attachment.save
# #     @pdf_file_attachment.pdf_file.attach(io: StringIO.new(pdf), filename: "Team_Feedback_#{course.id}.pdf", content_type: "application/pdf",
# #   identify: false)
# #     UserMailer.delay.generate_pdf_email(user_id, course.id, @pdf_file_attachment.id)
#   end