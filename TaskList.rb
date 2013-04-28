require 'rspec'

class Tasklist 
  attr_accessor :task, :datetime_start, :datetime_finish
  
  def initialize
    @time_start = Time.now
  end
  
  def task_add
  end
  
  def task_finish
  end 
  
  def display_all_tasks
  end
  
end

weekend = Tasklist.new
weekend.task_add
weekend.task_finished
weekend.display_all_tasks

describe TaskList do
  #it should have tasks
  #it should mark when tasks are finished
  #it should have a datetime when tasks begin
  #it should have a datetime when tasks are completed
end