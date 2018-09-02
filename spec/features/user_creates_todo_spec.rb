require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo("Wash car")

    expect(page).to display_todo("Wash car")
  end
end
