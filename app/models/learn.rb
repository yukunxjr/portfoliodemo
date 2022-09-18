class Learn < ApplicationRecord
    belongs_to :user

    has_many :studys
end
