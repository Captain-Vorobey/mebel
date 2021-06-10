class Furniture < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  has_one_attached :image
  has_many :orders, dependent: :delete_all
  scope :filter_by_name, -> (name) { where("name like ?", "#{name}%")}
  scope :filter_by_desc, -> (data) { where("description like ?", "%#{data}%")}
  scope :filter_by_price, -> (price) { where price: price }

  def self.search(search)
    if search
      (Array(self.filter_by_desc(search)) + Array(self.filter_by_name(search)) + Array(self.filter_by_price(search))).uniq
    else
      Furniture.all
    end
  end
end
