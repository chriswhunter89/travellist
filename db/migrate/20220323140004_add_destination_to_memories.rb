class AddDestinationToMemories < ActiveRecord::Migration[6.1]
  def change
    add_reference :memories, :destination, foreign_key: true
  end
end
