require 'rails_helper'

  describe 'user that is not signed in tries to navigate to a page'  do
    context 'visit[user_path]'  do
      it 'they are redirected to sign in page'  do
        user = User.create(name: "david", email: "something", password: "password")

        visit root_path

        page.find("#have-account").click

        fill_in("User Name*", with: "david")
        fill_in("Password*", with: "password")

        click_button("Log In")

        visit user_ideas_path(user)

        click_link("Home")

        expect(current_path).to eq(user_path(user))
      end
    end
  end 
