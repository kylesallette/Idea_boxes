class User < ApplicationRecord
  validates_presence_of :name, :email, :password


    enum role: ["default", "admin"]

    has_secure_password
    has_many :ideas


end
