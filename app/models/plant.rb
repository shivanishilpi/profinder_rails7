class Plant < ApplicationRecord
    validates :name, :price, presence: true
    has_one_attached :image
    acts_as_list
end
