class Kitten < ActiveRecord::Base

  validates :image, presence: true

  has_many :kitten_categories
  has_many :categories, through: :kitten_categories

end