require 'rails_helper'

RSpec.describe User, type: :model do

  before(:all) do
    @user1 = User.create!(
      :username => 12345, 
      :password => 12345
    )
  end

  describe "check username and password" do
    it "check pwd" do
        
        expect(@user1.username).to eq("12345")
        expect(@user1.password).to eq("12345")
    end
  end


end
