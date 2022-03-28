class RemoveForeignKeysFromTables < ActiveRecord::Migration[6.1]
  def change
    remove_reference(:destinations, :user, index: true, foreign_key: true)
    remove_reference(:memories, :destination, index: true, foreign_key: true)
    remove_reference(:memories, :user, index: true)
    remove_reference(:profiles, :user, index: true, foreign_key: true)
    remove_reference(:tasks, :destination, index: true, foreign_key: true)
  end
end
