class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :personal_name
      t.string :email
      t.string :company_name
      t.string :industry
      t.string :locale
      t.string :female_founder
      t.string :ethnic_founder
      t.string :capital_goal
      t.string :fundraising_stage

      t.timestamps null: false
    end
  end
end
