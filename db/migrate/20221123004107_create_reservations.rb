class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :job_offer_id
      t.integer :cusromer_id
      t.timestamps
    end
  end
end
