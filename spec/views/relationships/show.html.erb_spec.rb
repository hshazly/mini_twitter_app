require 'rails_helper'

RSpec.describe "relationships/show", :type => :view do
  before(:each) do
    @relationship = assign(:relationship, Relationship.create!(
      :follower_id => 1,
      :followed_id => 2,
      :create => "Create",
      :destroy => "Destroy"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Create/)
    expect(rendered).to match(/Destroy/)
  end
end
