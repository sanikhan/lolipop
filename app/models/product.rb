class Product < ActiveRecord::Base
 attr_accessor :category_id
  has_many :subcategories
  belongs_to :user
  has_many :bids
  has_many :product_attachments
  accepts_nested_attributes_for :product_attachments

  validates :initial_price, numericality: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :selling_price, numericality: true
  validates :description, presence: true, length: { maximum: 30 }
  validates :availibility, presence: true, length: { maximum: 30 }
  validates :subcategory_id, presence: true

end
