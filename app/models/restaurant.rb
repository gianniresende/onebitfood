class Restaurant < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category
  has_many :product_categories
  has_many :orders
  has_many :rates  

  validates :name, :delivery_tax, :city, :neighborhood, :street, :number, presence: true

  has_one_attached :image

  def average_rate
    sum = self.rates.to_a.sum(&:review)
    sum = sum / self.rates.count
    '%.1f' % sum
  end
end
