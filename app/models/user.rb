class User < ApplicationRecord
  validates_presence_of :name, :username, :password
  validates_uniqueness_of :username
end

