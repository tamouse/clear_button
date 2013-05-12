require 'spec_helper'

describe "Pages" do
	subject { page }
	before { visit '/pages/input'}
	describe "search" do
		it { should have_selector('input#show_button') }
		it { should have_selector('input#clear_button') }
	end
	before do
	  fill_in 'input_field', with: 'blah'
	  click_button 'Show'
	end
	it "should display the string 'blah'" do
		page.should have_selector('h3', text: 'blah')
	end
	describe 'clear button' do
		before { click_button 'Clear' }
		it "should not show the string 'blah'" do
			page.should_not have_selector('h3', text: 'blah')
		end
	end
end
