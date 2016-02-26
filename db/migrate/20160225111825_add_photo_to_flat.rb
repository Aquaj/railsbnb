class AddPhotoToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :photo, :string
  end
end
