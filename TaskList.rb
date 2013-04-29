class Tasklist 
  attr_accessor :task, :task_status, :task_list

  def initialize
    @task_list = []
    @task = []
    @task_status = { :active => "Task In Progress", :inactive => "Task Completed" }
  end
  
  def task_create(task_description)
      @task = @task_status[:active], task_description, Time.now.strftime("%D %R")
      @task_list << @task
  end
  
  def display_all_tasks
    @task_list.each do |status, description, time|
      puts "#{status} : #{description}\n\sadded at #{time}"
    end
  end
  
  def task_remove
  end 
  
  def task_update
  end
  
  def task_delete
  end
end

weekend = Tasklist.new
weekend.task_create("Sleep in")
weekend.task_create("Party down")
weekend.display_all_tasks

=begin
describe Tasklist do
  it should have tasks
  it should mark when tasks are completed
  it should have a datetime when tasks begin
  it should have a datetime when tasks are completed
end
=end
