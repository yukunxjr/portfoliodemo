class Dastbox < ApplicationRecord
    has_one :memo, dependent: :destroy
    has_many :trashcans
end
