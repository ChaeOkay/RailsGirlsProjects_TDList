require '../Tasklist'
require 'rubygems'
require 'shoulda'

describe "TaskList" do
  let(:weekend) {Tasklist.new}
  before { weekend.task_create("Sleep in") }
  
  describe "Tasklist should have tasks" do
    it { should validate_presence_of :task }
  end

  describe "Tasklists should have multiple tasks" do
  it { should validate_presence_of :task_list }
  end

end