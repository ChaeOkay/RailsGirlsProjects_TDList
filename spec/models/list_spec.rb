require 'spec_helper'

describe List do
  let (:list) { List.new(name: 'Books', list_status: 'In Progress') }
  cradle_to_cradle = Task.create(description: 'Cradle to Cradle', task_status: 'In Progress', list_id: 1)
  rabbit_run = Task.create(description: 'Rabbit Run', task_status: 'In Progress', list_id: 1)

  it 'should have a name' do
    list.name.should == 'Books'
  end

  it 'is not valid if it does not have a name' do
    list.name = nil
    list.should_not be_valid
  end

  it 'should be an instance of List' do
    list.should be_an_instance_of List
  end

  it 'should have tasks' do
    list.tasks.should == 2
  end
end
