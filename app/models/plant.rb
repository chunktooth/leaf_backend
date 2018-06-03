class Plant < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :sci_name, :img
  validates_uniqueness_of :name, :sci_name
end

