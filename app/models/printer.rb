class Printer < ApplicationRecord
    validates :model, presence: true
    validates :serial, presence: true, uniqueness: true
end
