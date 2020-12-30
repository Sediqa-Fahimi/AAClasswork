class ChangingIndicesOnArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_index :art_works, :artist_id
    add_index :art_works, [:artist_id, :title], unique: true
    change_column :art_works, :title, :string
  end
end
