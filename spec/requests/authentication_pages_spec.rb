require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "signin page" do
    before {visit signin_path}

    it { save_and_open_page; should have_selector('h1', text: 'Sign in') }
    it { should have_selector('title', text: 'Sign in')}
    
  end
end
