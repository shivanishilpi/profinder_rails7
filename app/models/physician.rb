class Physician < ApplicationRecord
    has_many :appointments
    has_many :pationts, through: :appointments
    accepts_nested_attributes_for :pationts
  accepts_nested_attributes_for :appointments
end
