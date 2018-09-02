module Features
  def create_todo(todo)
    click_on "Create new todo"
    fill_in "Title", with: todo
    click_on "Submit"
  end

  def display_todo(todo_title)
    have_css 'li', text: todo_title
  end

  def display_completed_todo(todo_title)
    have_css 'li.completed', text: todo_title
  end
end
