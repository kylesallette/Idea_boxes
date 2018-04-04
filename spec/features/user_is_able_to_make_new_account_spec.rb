require 'rails_helper'

  describe 'user visits root page'  do
    context 'visit [root_path]'  do
      it 'they click create account and fills out form'  do

        visit root_path

        page.find("#sign-up").click

        fill_in("User Name*", with: "kyle")
        fill_in("Password*", with: "password")
        fill_in("Email*", with: "email")

        click_button("Create User")

        expect(page).to have_content("Welcome, Kyle")
      end
    end
  end 
