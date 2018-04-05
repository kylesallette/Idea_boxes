require 'rails_helper'

describe Image, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:url)}
  end

    describe "relationships" do
      it {is_expected.to have_many(:ideas)}
  end
  describe "relationships" do
    it {is_expected.to have_many(:idea_images)}
  end
end
