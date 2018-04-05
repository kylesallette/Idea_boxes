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

        click_link('Edit')

        fill_in("New category name.*", with: "Dog")

        click_button("Update Category")

        expect(page).to have_content("Dog")
      end
    end
  end 
