class ArtworkShare < ApplicationRecord
  belongs_to :artwork,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :ArtWork

  belongs_to :viewer,
  primary_key: :id,
  foreign_key: :viewer_id,
  class_name: :User

end