class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.text :description
      t.string :address
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
