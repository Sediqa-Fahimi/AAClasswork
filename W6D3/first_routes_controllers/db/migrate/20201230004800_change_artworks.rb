class ChangeArtworks < ActiveRecord::Migration[5.2]
  def change
    change_column :art_works, :title, :string, unique: true 
  end
end
