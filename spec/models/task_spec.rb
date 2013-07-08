require 'spec_helper'

describe Task do

  it { should belong_to(:list) }

  describe 'create a new task' do
    let (:task) { Task.new(description: 'Life of Pi', task_status: 'In Progress', list_id: 1) }

    it 'should have a description' do
      task.description.should == 'Life of Pi'
    end

    it 'is not valid if it does not have a task_status' do
      task.task_status = nil
      task.should_not be_valid
    end

    it 'should be an instance of Task' do
      task.should be_an_instance_of Task
    end
  end

end
