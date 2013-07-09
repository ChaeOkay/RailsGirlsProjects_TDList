require 'spec_helper'

describe List do

  context 'valid entry' do
    it_behaves_like 'a valid entry'
    it { should have_many(:tasks) }

    subject(:list) { List.create(id: 1, description: 'Books', status: 'In Progress') }
    its(:description) { should == 'Books' }

    it 'should change the number of Lists' do
      list2 = List.new(description: 'List2', status: 'In Progress')
      expect { list2.save }.to change { List.count }.by(1)
    end
  end

  context 'invalid entry' do
  end

end
