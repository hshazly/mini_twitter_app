require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RelationshipsHelper. For example:
#
# describe RelationshipsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe RelationshipsHelper, :type => :helper do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
    @user1 = FactoryGirl.create(:user)
    helper.stub(:current_user) {@user1}
    
    @user2 = FactoryGirl.create(:user)
  end

  it "should return true if following" do
     relation = Relationship.create(:user_id => @user1.id, :followings_id => @user2.id)
     expect(helper.following? @user2.id).to be true
  end
  
  it "should return false when not following" do
     expect(helper.following? @user2.id).to be false   
  end
  
end
