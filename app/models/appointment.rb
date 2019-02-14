class Appointment < ApplicationRecord
    has_one :user
    has_one :pet
    has_one :vet
    has_many :services

    accepts_nested_attributes_for :user, :pet, :vet, :services
end