class Tasklist 
  attr_accessor :task_list

  def initialize
    @task_list = {}
  end
  
  def create_task(task_description)
    @task_list[task_description.downcase] = "In Progress", Time.now.strftime("%D %R")
  end
  
  def display_all_tasks
    @task_list.each do |description, task_info|
      puts "#{description} is #{task_info[0]}\n\sadded at #{task_info[1]}"
    end
  end
  
  def update_status(task)
    task = task.downcase
    if check_duplicates(task) == false
        puts "Task not listed!"
    elsif @task_list[task][0] == "In Progress"
        @task_list[task][0] = "COMPLETED"
    elsif @task_list[task][0] == "COMPLETED"
        @task_list[task][0] = "In Progress"
    else
        puts "Your task has a very strange status."
    end
  end
  
  def task_delete
  end

  def check_duplicates(task)
    task = task.downcase
    !!@task_list[task]
  end
end


#task_list = { task_description:  { task_status: " ",
#                                   time_created: " ",
#                                   time_finished: " "
#                                 }

#              task_description:  { task_status: " ",
#                                   time_created: " ",
#                                   time_finished: " "
#                                 }
#            }