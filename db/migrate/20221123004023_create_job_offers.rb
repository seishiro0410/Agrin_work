class CreateJobOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_offers do |t|

      t.integer :farmer_id
      t.string :job_name
      t.text :job_content
      t.string :salary
      t.string :job_address
      t.string :job_postal_code
      t.string :date_and_time
      t.string :time
      t.integer :area
      t.integer :job_form
      t.text :comment
      t.integer :job_status

      t.timestamps
    end
  end
end
