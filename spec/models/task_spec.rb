require 'spec_helper'

describe Task do

  context 'valid entry' do
    it_behaves_like 'a valid entry'
    it { should validate_presence_of(:list_id) }
    it { should belong_to(:list) }
  end

  context 'valid entry with description' do
    subject(:task) { Task.create(description: 'Life of Pi', status: 'In Progress', list_id: 1) }
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
