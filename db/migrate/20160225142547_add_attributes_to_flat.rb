class AddAttributesToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :capacity, :integer
    add_column :flats, :bathroom, :integer
    add_column :flats, :bedroom, :integer
    add_column :flats, :departure_time, :time
    add_column :flats, :tv_wifi, :boolean
    add_column :flats, :washing_machine, :boolean
    add_column :flats, :swimming_pool, :boolean
    add_column :flats, :wheelchair, :boolean
  end
end
