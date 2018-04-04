require "rails_helper"

  describe Idea, type: :model do
    it {should validate_presence_of(:name)}
  end
