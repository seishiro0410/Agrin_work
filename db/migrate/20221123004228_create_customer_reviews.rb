class CreateCustomerReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_reviews do |t|
      t.integer :customer_id
      t.integer :job_offer_id
      t.integer :customer_star
      t.text :customer_comment
      t.timestamps
    end
  end
end
