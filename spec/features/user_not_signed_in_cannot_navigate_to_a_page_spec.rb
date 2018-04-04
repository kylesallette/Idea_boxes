require 'rails_helper'

  describe 'user that is not signed in tries to navigate to a page'  do
    context 'visit[user_path]'  do
      it 'they are redirected to sign in page'  do
        user = User.create(name: "david", email: "something", password: "password")

        visit user_path(user)

        expect(current_path).to eq(root_path)
      end
    end
  end 
