class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :destination, null: false, foreign_key: true
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
