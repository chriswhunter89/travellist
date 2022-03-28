class ChangeForeignKeyForMemories < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :memories, :users
  end
end
