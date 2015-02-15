class CreatePitchEvents < ActiveRecord::Migration
  def change
    create_table :pitch_events do |t|
      t.string :event_name
      t.string :org_name
      t.string :city
      t.string :state
      t.string :event_start
      t.string :event_end
      t.string :registration_deadline
      t.string :detail_link
      t.string :contact_name
      t.string :contact_number
      t.string :contact_email
      t.string :location
      t.boolean :woman
      t.string :ethnic
      t.string :industry

      t.timestamps null: false
    end
  end
end
