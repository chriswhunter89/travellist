class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.integer :longitude
      t.integer :latitude
      t.boolean :visited
      t.integer :rating

      t.timestamps
    end
  end
end
