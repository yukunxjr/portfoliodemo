class Memo < ApplicationRecord
    # has_one :dastbox
    # belongs_to :trashcans
    include Discard::Model
end
