class TasksController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all

   # respond_to do |format|
   #   format.html  # index.html.erb
   #   format.json  { render :json => @tasks }
   # end
  end

  # GET /tasks/1
  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks

  end

  # GET /tasks/new
  def new
    @task = Task.new(params[:id])
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
    @list = List.find(@task.list_id)
  end

  # POST /tasks
  def create
    @task = Task.new(params[:task])

    if @task.save
      redirect_to @task.list, notice: 'Task was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @task = Task.find(params[:id])
    if @task.update(params[:task])
      redirect_to @task.list, notice: 'Task was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_task
    #  @task = Task.find(params[:id])
    #end

    # Only allow a trusted parameter "white list" through.
    #def task_params
    #  params.require(:task).permit(:description, :task_status, :list_id)
    #end
end
