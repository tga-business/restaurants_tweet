class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options presence:true do
    validates :name
    validates :appeal
    validates :smoking
    validates :near_station
    validates :holiday
    end
  
    with_options numericality: { other_than: 1 } do
      validates :opening_id
      validates :clossing_id
    end
    belongs_to :user
    belongs_to :opening
    belongs_to :clossing
    has_one_attached :image
end
