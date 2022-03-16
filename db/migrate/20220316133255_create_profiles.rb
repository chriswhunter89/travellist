class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.text :bio
      t.text :interests
      t.string :location
      t.date :birth_date

      t.timestamps
    end
  end
end
