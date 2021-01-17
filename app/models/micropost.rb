class Micropost < ApplicationRecord
  belongs_to :user

  has_many :favorites
  has_many :favorite_microposts, through: :favorites, source: :microposts

  validates :content, presence: true, length: { maximum: 255}
end
