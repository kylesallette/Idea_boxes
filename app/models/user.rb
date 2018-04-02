class User < ApplicationRecord

validates :email, presence: true, uniqueness: { message: "This email already exists in our database!" }
validates :password_digest, presence: true
validates :name, presence: true
has_many :ideas
has_many :categories
enum role: %w(default admin)
has_secure_password




end
