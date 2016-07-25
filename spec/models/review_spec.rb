require 'spec_helper'

describe Review do
  
   let(:user) {FactoryGirl.create(:user)}

    before { @review = user.reviews.build(content: "Lorem ipsum") }

   	subject { @review }
   	it { should respond_to(:content) }
    it { should respond_to(:user_id) }
    it {should respond_to(:user)}
    its(:user) { should==user }
    
    it { should be_valid }

    describe "when user_id is not present" do
    before { @review.user_id = nil }
    it { should_not be_valid }
  end
end
