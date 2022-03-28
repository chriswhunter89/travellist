class AddReferencesToTables < ActiveRecord::Migration[6.1]
  def change
    add_reference :destinations, :user, foreign_key: true
    add_reference :tasks, :destination, foreign_key: true
    add_reference :memories, :destination, foreign_key: true
    add_reference :profiles, :user, foreign_key: true
  end
end
