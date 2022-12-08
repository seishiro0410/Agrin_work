class RenameCusromerIdColumnToReservations < ActiveRecord::Migration[6.1]
  def change
     rename_column :reservations, :cusromer_id, :customer_id
  end
end
