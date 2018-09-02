require 'rails_helper'

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    create_todo("Wash car")

    click_on "Mark as done"

    expect(page).to display_completed_todo("Wash car")
  end
end
