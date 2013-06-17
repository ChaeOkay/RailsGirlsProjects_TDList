module TaskListFunctions
  
  def create_task(task_description)
    @task_list[task_description.downcase] = "In Progress"
  end
  
  def display_all_tasks
    count = 1
    @task_list.each do |description, status|
      puts "#{count}: #{description} : #{status}"
      count += 1
    end
  end
  
  def update_status(task)
    puts "Task not listed" if !check_duplicates(task)
 
    if @task_list[task] == "In Progress"
        @task_list[task] = "COMPLETED"
    elsif @task_list[task] == "COMPLETED"
        @task_list[task] = "In Progress"
    else
        puts "Status not recognized."
    end
  end
  
  def delete_task(task)
    if !check_duplicates(task)
      "#{task} not listed."
    else
      @task_list.delete(task)
      "#{task} deleted."
    end
  end

  private

  def check_duplicates(task)
    task = task.downcase
    !!@task_list[task]
  end
end

class Tasklist
  include TaskListFunctions

  attr_accessor :task_list

  def initialize
    @task_list = {}
  end
end


#task_list = { task_description1:  "status",
#              task_description1:  "status",
#            }