class Driver < ApplicationRecord
    validates :model, presence: true, uniqueness: true
    validates :link, presence: true
end
