require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Create new todo"
    fill_in "Title", with: "Sweep chimney"
    click_on "Submit"

    expect(page).to have_css 'li', text: "Sweep chimney"
  end
end
