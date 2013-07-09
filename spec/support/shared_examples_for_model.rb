shared_examples_for 'a valid entry' do
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:status) }
  its(:status) { should match(/in progress/i) }  #not working in list_spec
end

shared_examples_for 'an invalid entry' do
  it { should_not be_valid }
  its(:description) { should be_nil }
  its(:status) { should be_nil }
end
