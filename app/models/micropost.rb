class Micropost < ApplicationRecord
  belongs_to :user

  has_many :favorites, dependent: :destroy
  has_many :favorite_microposts, through: :favorites, source: :micropost

  validates :content, presence: true, length: { maximum: 255}
end
