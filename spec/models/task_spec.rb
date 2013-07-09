require 'spec_helper'

describe Task do
    it { should belong_to(:list) }

  context 'valid entry' do
    subject(:task) { Task.create(description: 'Life of Pi', status: 'In Progress', list_id: 1) }
    it_behaves_like 'a valid entry'
    it { should validate_presence_of(:list_id) }
    its(:description) { should == 'Life of Pi' }
  end

  context 'invalid entry' do
    subject(:invalid_task) { Task.create(description: nil, status: nil) }
    it_behaves_like 'an invalid entry'
  end

  context 'adding Tasks' do
    it "should increase count" do
      @task2 = Task.new(description: 'Task2', status: 'In Progress', list_id: 1)
      expect { @task2.save }.to change { Task.count }.by(1)
    end
  end
end
