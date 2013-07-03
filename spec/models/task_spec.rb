require 'spec_helper'

describe Task do

  let (:task) { Task.new(description: 'Life of Pi',
                          task_status: 'In Progress',
                          list_id: 1)}

  it "should have a description" do
    task.description.should == 'Life of Pi'
  end

  it 'is not valid if it does not have a list_id' do
    task.list_id = nil
    task.should_not be_valid
  end

end
