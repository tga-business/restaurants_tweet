class Daily < ApplicationRecord
  validates :tweet ,presence: true

  belongs_to :user
  belongs_to :restaurant
end
