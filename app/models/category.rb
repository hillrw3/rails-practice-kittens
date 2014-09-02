class Category < ActiveRecord::Base

  validates :name, presence: true, uniqueness: {case_sensitive: false}

  has_many :kitten_categories
  has_many :kittens, through: :kitten_categories


end