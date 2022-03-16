class AddColumnToMemories < ActiveRecord::Migration[6.1]
  def change
    add_reference :memories, :user, foreign_key: true
  end
end
