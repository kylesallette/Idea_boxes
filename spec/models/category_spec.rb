require "rails_helper"

  describe Category, type: :model do
    it {should validate_uniqueness_of(:title)}
  end
