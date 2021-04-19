class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.text :subject
      t.text :city
      t.date :date

      t.timestamps
    end
  end
end
