class TodosController < ApplicationController
  layout "user"

  before_action :confirm_logged_in

  def index
    @todos = Todo.sorted(session[:user_id])
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def pending
    @todos = Todo.pending(session[:user_id])
  end

  def completed
    @todos = Todo.completed(session[:user_id])
  end

  def overdue
    @todos = Todo.overdue(session[:user_id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.status = "pending"
    @todo.user_id = session[:user_id]
    if @todo.save
      flash[:notice] = "Todo has been created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end


  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(todo_params)
      flash[:notice] = "Todo has been updated successfully"
      redirect_to(:action => 'show', :id => @todo.id)
    else
      render('edit')
    end
  end

  def delete
    @todo = Todo.find(params[:id])
  end

  def destroy
    @todo = Todo.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :description, :deadline, :completion_date, :status)
  end
end
