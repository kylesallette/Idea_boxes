require 'rails_helper'

  describe 'user visits root page'  do
    context 'visit [root_path]'  do
      it 'user seees create new account or already have one'  do

        visit root_path

        expect(page).to have_content("I already have an account")
        expect(page).to have_content("Sign Up to Be a User")
      end
    end
  end
