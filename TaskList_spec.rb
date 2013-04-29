require "Tasklist"

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

  
=begin
describe Tasklist do
  it should have tasks
  it should mark when tasks are completed
  it should have a datetime when tasks begin
  it should have a datetime when tasks are completed
end

  it has_behavior 'sortability' do
    let(:sortable) {Entity.new}
  end
end



=end