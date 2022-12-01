class CreateJobOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_offers do |t|

      t.integer :farmer_id
      t.string :job_name
      t.text :job_content
      t.string :salary
      t.string :job_address
      t.string :job_postal_code
      t.date :day
      t.time :start_time
      t.string :job_time
      t.integer :area
      t.integer :job_form
      t.text :comment
      t.boolean :job_status, default: true, null: false

      t.timestamps
    end
  end
end
