class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: :true
  validate :power_id, presence: :ture
end
