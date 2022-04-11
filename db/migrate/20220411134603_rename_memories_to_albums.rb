class RenameMemoriesToAlbums < ActiveRecord::Migration[6.1]
  def change
    rename_table :memories, :albums
  end
end
