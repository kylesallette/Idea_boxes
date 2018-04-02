class Idea < ApplicationRecord
  validates :content, presence: true, uniqueness: { message: "This email already exists in our database!" }
  has_many :images
  belongs_to :category
  belongs_to :user
end
