require 'rails_helper'

  describe 'user visits root page'  do
    context 'visit [root_path]'  do
      it 'they click log in and fills in info  and hits submit and sees welcome page'  do
         user = User.create(name: "david", email: "something", password: "password")

         visit root_path

         page.find("#have-account").click

         fill_in("User Name*", with: "david")
         fill_in("Password*", with: "password")

         click_button("Log In")

         expect(page).to have_content("Welcome, David")

       end
     end
   end
