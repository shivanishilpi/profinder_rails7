class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :physician
      t.belongs_to :pationt
      t.datetime :appointment_date

      t.timestamps
    end
  end
end
