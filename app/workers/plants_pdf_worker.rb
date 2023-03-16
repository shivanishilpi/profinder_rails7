class PlantsPdfWorker
    include Sidekiq::Worker

    def perform(plant)
        debugger 
        flash[:notice] = "Please wait, we will mail the PDF on your email"
        plant = Plant.find(plant)
        pdf_html = ActionController::Base.new.render_to_string(template: 'plants/plant_pdf', layout: 'pdf')
        pdf = WickedPdf.new.pdf_from_string(pdf_html)
        send_data pdf, filename: 'file.pdf',  type: 'application/pdf'
        # file = WickedPdf.new.pdf_from_string()
        # send_data(file, filename: "file.pdf", type: 'application/pdf')
    end
end