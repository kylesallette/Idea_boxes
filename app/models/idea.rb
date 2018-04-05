class Idea < ApplicationRecord
  validates :name, :content, presence: true
    belongs_to :category, optional: true
    belongs_to :user

    has_many :idea_images, dependent: :nullify
    has_many :images, through: :idea_images

end
