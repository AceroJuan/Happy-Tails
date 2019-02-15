class Service < ApplicationRecord
    belongs_to :vet
    has_many :appointment
end