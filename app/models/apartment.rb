class Apartment < ApplicationRecord
    belongs_to :user
    has_many :orderables
    has_many :carts, through: :orderables
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: {greater_then: 0 }
    validates :location, presence: true
end
