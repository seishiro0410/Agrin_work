class CreateFarmerReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :farmer_reviews do |t|
      t.integer :customer_id
      t.integer :job_offer_id
      t.integer :farmer_star
      t.text :farmer_comment
      t.timestamps
    end
  end
end
