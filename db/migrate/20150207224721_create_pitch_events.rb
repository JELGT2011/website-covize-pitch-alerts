class CreatePitchEvents < ActiveRecord::Migration
  def change
    create_table :pitch_events do |t|
      t.string :title
      t.string :host
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
