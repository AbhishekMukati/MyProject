class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date 
      t.references :doctor
      t.references :patient

      t.timestamps
    end
  end
end
