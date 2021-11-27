class Jeans < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :jeans_image
    validates :brand_id
    validates :user_id
    validates :lot_id
    validates :date_of_purchase
  end

  belongs_to :lot, optional: true
  belongs_to :brand, optional: true
  belongs_to :year, optional: true
  belongs_to :user, optional: true
  has_many :posts
  has_many :nominee_maps, dependent: :destroy, foreign_key: 'jeans_id'
  has_many :nominees, through: :nominee_maps
  has_many :award_maps, dependent: :destroy, foreign_key: 'jeans_id'
  has_many :awards, through: :award_maps

  mount_uploader :jeans_image, JeansUploader

  def is_nominated_by?(jeans, user)
    jeans.nominee_maps.find_by(user_id: user.id)
  end
end
