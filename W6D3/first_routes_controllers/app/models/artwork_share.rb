class ArtworkShare < ApplicationRecord

  validates :artwork_id, presence: true, uniqueness: {scope: :viewer_id}
  validates :viewer_id, presence: true 

  belongs_to :artwork,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :ArtWork

  belongs_to :viewer,
  primary_key: :id,
  foreign_key: :viewer_id,
  class_name: :User

end