class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: :true  
  validates :category, inclusion: {in: CATEGORIES}
  has_many :review, dependent: :destroy
end
