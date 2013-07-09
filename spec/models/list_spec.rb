require 'spec_helper'

describe List do
  #shoulda gem
  it { should have_many(:tasks) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:list_status) }

  describe 'creating a new list' do

    it 'should be an instance of List' do   #example
      should be_an_instance_of List    #expectation
    end

    it 'should change the number of Lists' do
      list2 = List.new(name: 'List2', list_status: 'In Progress')
      expect { list2.save }.to change { List.count }.by(1)
    end

    let (:list) { List.new(id: 1, name: 'Books', list_status: 'In Progress') }

    it 'should have a name' do
      list.name.should == 'Books'
    end

    it 'is not valid if it does not have a name' do
      list.name = nil
      list.should_not be_valid
    end

    it 'should have a list_status of In Progress' do
      list.list_status.should match(/in progress/i)
    end
  end
end
