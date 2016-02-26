class ChangeHourToIntegerInFlats < ActiveRecord::Migration
  def change
    remove_column :flats, :departure_time
    add_column :flats, :departure_time, :integer
  end
end
