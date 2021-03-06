require 'spec_helper'

describe List do
  it { should have_many(:tasks) }

  context 'valid entry' do
    subject(:list) { List.create(description: 'Books', status: 'In Progress') }
    it_behaves_like 'a valid entry'
    its(:description) { should == 'Books' }
  end

  context 'invalid entry' do
    subject(:invalid_list) { List.create(status: nil) }
    it_behaves_like 'an invalid entry'
  end

  context 'adding Lists' do
    it "should increase count" do
      @list2 = List.new(description: 'List2', status: 'In Progress')
      expect { @list2.save }.to change { List.count }.by(1)
    end
  end
end
