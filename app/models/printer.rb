class Printer < ApplicationRecord
    validates :serial, presence: true, uniqueness: true
    belongs_to :driver
end
