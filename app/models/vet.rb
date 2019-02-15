class Vet < ApplicationRecord
    has_many :service
    accepts_nested_attributes_for :services
end