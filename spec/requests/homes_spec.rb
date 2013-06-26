require 'spec_helper'

describe "Home Index Page" do

  it "names list types" do
    visit '/home/index'
    expect(page).to have_content('Task Lists')
  end

end
