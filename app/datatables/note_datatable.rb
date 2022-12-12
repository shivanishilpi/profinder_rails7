# class NoteDatatable < AjaxDatatablesRails::ActiveRecord
#   def_delegator :@view, :link_to
#   def_delegator :@view, :edit_note_path
#   def_delegator :@view, :note_path

#   def initialize(params, opts = {})
#     @view = opts[:view_context]
#     super
#   end
  
#   def view_columns
#     @view_columns ||= {
#       id: { source: "Note.id" },
#       title: { source: "Note.title" },
#       body:  { source: "Note.body" },
#       actions: { source: "Note.id" }
#      } 
#   end

#   def data
#     records.map do |record|
#       {
#         id: record.id,
#         title: record.title,
#         body: record.body,
#         actions: record.id
#       }
#     end
#   end

#   def get_raw_records
#     Note.eager_load(:user).where(notable_id: params[:user_id], notable_type: "User")
#   end
  
#   def links record
#     all_links = ""
#     all_links += link_to edit_user_note_path(record) do 
#       "<i class=\"fa fa-pencil\" style=\"font-size: x-large;\"></i>".html_safe
#     end
#     all_links += link_to user_note_path(record), method: :delete, data: { confirm: 'Are you sure you want to delete?' } do
#       "<i class=\"fa fa-close\" style=\"font-size: x-large;\"></i>".html_safe
#     end
#     all_links.html_safe
#   end

# end
