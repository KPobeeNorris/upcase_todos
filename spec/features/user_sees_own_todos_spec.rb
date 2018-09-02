require 'rails_helper'

feature "User sees own todos" do
  scenario "doesn't see others" do
    Todo.create(title: "Buy milk", email: "other_person@example.com")

    sign_in_as("someone@example.com")

    expect(page).not_to display_todo("Buy milk")
  end
end
