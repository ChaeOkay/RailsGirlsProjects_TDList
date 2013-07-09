require 'spec_helper'

describe List do

  it { should have_many(:tasks) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:status) }
  it { should be_an_instance_of List }

  describe 'create a new list' do

    subject(:list) { List.create(id: 1, description: 'Books', status: 'In Progress') }

    its(:status) { should match(/in progress/i) }
    its(:description) { should == 'Books' }

    it 'is not valid if it does not have a description' do
      list.description = nil
      list.description { should be_nil? }
    end

    it 'should change the number of Lists' do
      list2 = List.new(description: 'List2', status: 'In Progress')
      expect { list2.save }.to change { List.count }.by(1)
    end

  end
end
