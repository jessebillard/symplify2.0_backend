class List < ApplicationRecord
    has_many :notes
    belongs_to :board
end
