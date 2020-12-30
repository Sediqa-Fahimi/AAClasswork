class ArtWork < ApplicationRecord
    validates :artist_id, presence: true, uniqueness: true
    validates :title, presence: true, uniqueness: true
end