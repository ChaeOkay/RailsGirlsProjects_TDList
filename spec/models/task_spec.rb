require 'spec_helper'

describe Task do
  it { should belong_to(:list) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:list_id) }
  it { should be_an_instance_of Task }

  describe 'create a new task' do

    subject(:task) { Task.create(description: 'Life of Pi', status: 'In Progress', list_id: 1) }

    its(:status) { should match(/in progress/i) }
    its(:description) { should == 'Life of Pi' }

    it 'is not valid if it does not have a status' do
      task.status = nil
      task.status { should be_nil? }
    end

    it 'should change the number of Tasks' do
      task2 = Task.new(description: 'Task2', status: 'In Progress', list_id: 1)
      expect { task2.save }.to change { Task.count }.by(1)
    end

  end
end
