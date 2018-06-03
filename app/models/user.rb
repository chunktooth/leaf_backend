class User < ApplicationRecord
  has_many :plants
  validates_presence_of :name, :username, :password
  validates_uniqueness_of :username
end