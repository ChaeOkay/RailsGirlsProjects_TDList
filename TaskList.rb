class Tasklist 
  attr_accessor :task, :task_description, :task_status, :task_list, :time_created

  def initialize
    @task_list = []
    @task = []
    @task_status = { :active => "Task In Progress", :inactive => "Task Completed" }
  end
  
  def task_create(task_description)
    @time_created = Time.now.strftime("%D %R")
    @task_description = task_description
    @task = @task_status[:active], @task_description, @time_created
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



describe "New TaskList" do
  before do
    @weekend = Tasklist.new
    @weekend.task_create("sleep in")
    @weekend.task_create("party down")
  end
  
  describe "creating new tasks" do
    it "should include tasks in the Task List" do
      @weekend.task_list.size.should eql(2)
    end
  end
  
  describe "displaying all tasks" do
    it "should include descriptions" do
      @weekend.task_list.should include("sleep in" && "party down")
    end
  end
    
    
  describe "removing a task" do
    before do
      @weekend.task_remove("party down")
    end
    it "should not have task description 'party down'" do
      @weekend.task_remove.should_not include("party down")
    end
  end
    
end
