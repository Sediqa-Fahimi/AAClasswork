# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true 

    has_many :artworks, dependent: :destroy,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :ArtWork  

    has_many :viewers,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

    has_many :shared_artworks, dependent: :destroy,
    through: :viewers,
    source: :artwork
end
