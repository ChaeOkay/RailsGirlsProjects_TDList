require 'spec_helper'

describe List do

  it { should have_many(:tasks) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:list_status) }
  it { should be_an_instance_of List }

  describe 'create a new list' do

    let (:list) { List.new(id: 1, name: 'Books', list_status: 'In Progress') }

    it 'should have a name' do
      list.name.should == 'Books'
    end

    it 'is not valid if it does not have a name' do
      list.name = nil
      list.should_not be_valid
    end

    it { list.list_status.should match(/in progress/i) }

    it 'should change the number of Lists' do
      list2 = List.new(name: 'List2', list_status: 'In Progress')
      expect { list2.save }.to change { List.count }.by(1)
    end

  end
end
