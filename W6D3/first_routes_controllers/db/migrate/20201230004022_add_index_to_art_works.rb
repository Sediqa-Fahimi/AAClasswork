class AddIndexToArtWorks < ActiveRecord::Migration[5.2]
  def change
    add_index :art_works, :artist_id, unique: true
  end
end
