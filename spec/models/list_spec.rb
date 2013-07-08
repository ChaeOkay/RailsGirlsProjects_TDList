require 'spec_helper'

describe List do

  it { should have_many(:tasks) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:list_status) }

  describe 'creating a new list' do
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

end
