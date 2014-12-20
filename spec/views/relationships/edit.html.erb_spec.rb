require 'rails_helper'

RSpec.describe "relationships/edit", :type => :view do
  before(:each) do
    @relationship = assign(:relationship, Relationship.create!(
      :follower_id => 1,
      :followed_id => 1,
      :create => "MyString",
      :destroy => "MyString"
    ))
  end

  it "renders the edit relationship form" do
    render

    assert_select "form[action=?][method=?]", relationship_path(@relationship), "post" do

      assert_select "input#relationship_follower_id[name=?]", "relationship[follower_id]"

      assert_select "input#relationship_followed_id[name=?]", "relationship[followed_id]"

      assert_select "input#relationship_create[name=?]", "relationship[create]"

      assert_select "input#relationship_destroy[name=?]", "relationship[destroy]"
    end
  end
end
