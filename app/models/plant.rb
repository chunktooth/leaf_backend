class Plant < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :img
  validates_uniqueness_of :name
end

