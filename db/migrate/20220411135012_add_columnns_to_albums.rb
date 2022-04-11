class AddColumnnsToAlbums < ActiveRecord::Migration[6.1]
  def change
    remove_column :albums, :blog
    remove_column :albums, :review
    add_column :albums, :title, :string
    add_column :albums, :description, :text
  end
end
