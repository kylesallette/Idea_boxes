require 'rails_helper'

  describe "relationships" do
    it {is_expected.to have_many(:idea)}
  end
