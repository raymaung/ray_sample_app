require 'spec_helper'

describe "UserPages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Sign up')}

    it { should have_selector('title', text: full_title('Sign up'))}

  end

  describe "profile page" do

    let(:user) {FactoryGirl.create(:user)}

    before { visit user_path(user) }

    it { should have_selector('h1', text: user.name)}

    it { should have_selector('title', text: user.name)}

  end

  describe "signup" do
    before { visit signup_path }

    describe "with invalid information" do
      it 'should not creat a user' do
        old_count = User.count
        click_button 'Create my account'
        new_account = User.count

        new_account.should == old_count
      end
    end

    describe "with valid information" do
      it 'should create a user'
    end
  end

end
