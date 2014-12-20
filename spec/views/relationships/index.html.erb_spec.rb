require 'rails_helper'

RSpec.describe "relationships/index", :type => :view do
  before(:each) do
    assign(:relationships, [
      Relationship.create!(
        :follower_id => 1,
        :followed_id => 2,
        :create => "Create",
        :destroy => "Destroy"
      ),
      Relationship.create!(
        :follower_id => 1,
        :followed_id => 2,
        :create => "Create",
        :destroy => "Destroy"
      )
    ])
  end

  it "renders a list of relationships" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
    assert_select "tr>td", :text => "Destroy".to_s, :count => 2
  end
end
