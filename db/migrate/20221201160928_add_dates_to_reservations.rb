class AddDatesToReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :date, :string
    add_column :reservations, :start_date, :datetime 
    add_column :reservations, :end_date, :datetime 
  end
end
