class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params.require(:todo).permit(:title))
    @todo.save!
    redirect_to todos_path
  end

  private
  
end
