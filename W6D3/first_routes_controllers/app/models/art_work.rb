# == Schema Information
#
# Table name: art_works
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#
class ArtWork < ApplicationRecord
    validates :artist_id, presence: true, uniqueness: true
    validates :title, presence: true, uniqueness: {scope: :artist_id}

    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User 
end
