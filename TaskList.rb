require 'shoulda'

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



describe "New TaskList" do
  
  before do
    @weekend = Tasklist.new
    @weekend.task_create("sleep in")
    @weekend.task_create("party down")
  end
  
  describe "creating a task" do
    it "should have a task" do
      @weekend.should be_an_instance_of Tasklist
    end
  end
end

=begin
weekend = Tasklist.new
weekend.task_create("Sleep in")
weekend.task_create("Party down")
weekend.display_all_tasks


describe Tasklist do
  it should have tasks
  it should mark when tasks are completed
  it should have a datetime when tasks begin
  it should have a datetime when tasks are completed
end



describe "TaskList" do
  let(:weekend) {Tasklist.new}
  before  { weekend.task_create("Sleep in") }
  
  describe "Tasklist should have tasks" do
    it { should validate_presence_of(:task) }
  end

  describe "Tasklists should have task list" do
  it { should validate_presence_of(:task_list) }
  end

=end