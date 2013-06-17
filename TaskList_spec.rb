require_relative 'TaskList'

describe "New TaskList" do
  before do
    @weekend = Tasklist.new
  	@weekend.create_task("sleep in")
   	@weekend.create_task("party down")
   	end

  	it "should have tasks in the Task List" do
    	@weekend.task_list.size.should eql(2)
    end
  
  describe "displaying all tasks" do
    it "should include descriptions" do
      @weekend.display_all_tasks.should include("sleep in" && "party down")
    end
  end
    
  describe "updating status of a task" do
    before do
      @weekend.update_status("sleep in")
    end
    
    it "should be capable of changing the status" do
      @weekend.task_list["sleep in"].should include("COMPLETED")
    end
  end
  
    
  describe "removing a task" do
    it "should return an message if task does not currently exist" do
      @weekend.delete_task("cook a meal").should include("cook a meal not listed.")
    end
    
    before do
      @weekend.delete_task("party down")
    end
    
    it "should remove a task that currently exists" do
      @weekend.display_all_tasks.should_not include("party down")
    end
  end
  
end