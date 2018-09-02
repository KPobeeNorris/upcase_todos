require 'rails_helper'

feature "User completes a todo" do
  scenario "successfully" do
    sign_in

    click_on "Create new todo"
    fill_in "Title", with: "Wash car"
    click_on "Submit"

    click_on "Mark as done"

    expect(page).to have_css 'li.completed', text: "Wash car"
  end
end
