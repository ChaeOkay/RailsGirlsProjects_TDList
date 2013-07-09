require 'spec_helper'

describe Task do
  it { should belong_to(:list) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:task_status) }
  it { should validate_presence_of(:list_id) }

  describe 'create a new task' do
    it 'should be an instance of Task' do   #example
      subject.should be_an_instance_of Task    #expectation
    end

    it 'should change the number of Tasks' do
      task2 = Task.new(description: 'Task2', task_status: 'In Progress', list_id: 1)
      expect { task2.save }.to change { Task.count }.by(1)
    end

    let (:task) { Task.new(description: 'Life of Pi', task_status: 'In Progress', list_id: 1) }

    it 'should have a description' do
      task.description.should == 'Life of Pi'
    end

    it 'is not valid if it does not have a task_status' do
      task.task_status = nil
      task.should_not be_valid
    end
  end
end
