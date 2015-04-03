class CreatePitchEvents < ActiveRecord::Migration
  def change
    create_table :pitch_events do |t|
      t.string :event_name
      t.string :org_name
      t.attachment :logo
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :event_start
      t.string :event_end
      t.string :registration_deadline
      t.string :detail_link
      t.string :contact_name
      t.string :contact_number
      t.string :contact_email
      t.string :local
      t.string :national
      t.boolean :woman
      t.string :ethnic
      t.string :industry
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end