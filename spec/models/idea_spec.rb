require "rails_helper"

  describe Idea, type: :model do
      describe "validations" do
    it {should validate_presence_of(:name)}
  end

   describe "relationships" do
      it {is_expected.to have_many(:images)}
    end

    describe "relationships" do
       it {is_expected.to have_many(:idea_images)}
     end

      describe "relationships" do
         it {is_expected.to belong_to(:user)}
       end
     end
