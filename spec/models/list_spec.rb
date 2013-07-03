require 'spec_helper'

describe List do

  let (:list) { List.new(name: 'Books', list_status: 'In Progress') }

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

end
