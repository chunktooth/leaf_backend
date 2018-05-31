class User < ApplicationRecord
  # has_secure_password
  validates_presence_of :name, :username, :password
  validates_uniqueness_of :username
end

