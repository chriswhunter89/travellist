class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.text :blog
      t.text :review

      t.timestamps
    end
  end
end
