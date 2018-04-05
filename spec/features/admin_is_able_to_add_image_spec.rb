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

        page.find("#add-image").click

        fill_in("name for image*", with: "something")
        fill_in("Image url*", with: "https://image.ibb.co/eKbtGc/mario_kart_icon_by_betatus_d6th2q4.png")

        click_button("Create Image")

        expect(page).to have_xpath("//img[contains(@src,'https://image.ibb.co/eKbtGc/mario_kart_icon_by_betatus_d6th2q4.png')]")
      end
    end
  end
