class Tasklist 
  attr_accessor :task_list, :task_status

  def initialize
    @task_list = {}
    @task_status = { :active => "In Progress", :inactive => "Completed" }
  end
  
  def create_task(task_description)
    @task_list[task_description] = @task_status[:active], Time.now.strftime("%D %R")
  end
  
  def display_all_tasks
    @task_list.each do |description, task_info|
      puts "#{description} is #{task_info[0]}\n\sadded at #{task_info[1]}"
    end
  end
  
  def update_status
  end
  
  def task_delete
  end
end



describe "New TaskList" do
  before do
    @weekend = Tasklist.new
    @weekend.create_task("sleep in")
    @weekend.create_task("party down")
  end
  
  describe "creating new tasks" do
    it "should include tasks in the Task List" do
      @weekend.task_list.size.should eql(2)
    end
  end
  
  describe "displaying all tasks" do
    it "should include descriptions" do
      @weekend.display_all_tasks.should include("Task In Progress" && "party down")
    end
  end
    
  describe "updating status of a task" do
    before do
      @weekend.update_status
    end
    
    it "should be capable of changing the status" do
      @weekend.task_list["sleep in"].should include("Completed")
    end
  end
  
    
  describe "removing a task" do
    it "should return an message if task does not currently exist" do
      @weekend.task_delete("cook a meal").should include("cook a meal isn't listed!")
    end
    
    before do
      @weekend.task_delete("party down")
    end
    
    it "should remove a task that currently exists" do
      @weekend.display_all_tasks.should_not include("party down")
    end
  end
  
end
