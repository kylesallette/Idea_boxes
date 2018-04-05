class Image < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :url

  has_many :idea_images, dependent: :nullify
  has_many :ideas, through: :idea_images, class_name: "::Idea"
end
