class Boook < ActiveRecord::Base
  has_many :reviews
  belongs_to :publish

  validates :isbn, presence: true, uniqueness: true
  validates :title, length: {minimum: 1, maximum: 100}
  validates :price, numericality: {only_integer: true}
end
