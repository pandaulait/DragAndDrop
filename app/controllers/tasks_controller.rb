class TasksController < ApplicationController
  def index
    @tasks = Task.rank(:row_order)
  end

  def show
  end

  def edit
  end
  
  def sort
    task = Task.find(params[:book_id])
    task.update(task_params)
    render body: nil
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    @task.save
    redirect_to tasks_path
  end
  private

  def task_params
    params.require(:task).permit(:title, :body, :row_order_position)
  end
end
