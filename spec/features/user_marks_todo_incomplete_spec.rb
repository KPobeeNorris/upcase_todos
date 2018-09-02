require 'rails_helper'

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo("Wash car")

    click_on "Mark as done"
    click_on "Mark as incomplete"

    expect(page).not_to display_completed_todo("Wash car")

    expect(page).to display_todo("Wash car")
  end
end
