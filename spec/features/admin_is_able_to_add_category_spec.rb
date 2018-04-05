require 'rails_helper'

  describe 'admin logs in'  do
    context 'admin logs into app'  do
      it 'admin navigates to add category and creates new category'  do
        user = User.create(name: "admin", email: "something", password: "red", role: 1)

        visit root_path

        page.find("#have-account").click

        fill_in("User Name*", with: "admin")
        fill_in("Password*", with: "red")

        click_button("Log In")

        page.find("#add-cat").click

        fill_in("new category*", with: "something fun")

        click_button("Create Category")

        expect(current_path).to eq(admin_categories_path)
        expect(page).to have_content("something fun")
      end
    end
  end
