class Post < ApplicationRecord
    validates :title, :url, :content, presence: true

    belongs_to :author,
    foreign_key: :author_id,
    class_name: :User

    has_many :subbings, 
    foreign_key: :post_id, 
    class_name: :PostSub, 
    dependent: :destroy, 
    inverse_of: :post

    has_many :subs, 
    through: :subbings, 
    source: :sub




end
