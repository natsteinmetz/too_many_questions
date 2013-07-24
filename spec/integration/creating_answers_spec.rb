require 'spec_helper'
feature "Creating Answers" do
	before do
		Factory(:question, :name => "Sample Question")
		visit '/'
		click_link "Sample Question"
		click_link "New Answer"
	end
	scenario "Creating an answer" do
		fill_in "Description", :with => "Sample Answer"
		click_button "Create Answer"
		page.should have_content("Answer has been created.")
	end
	scenario "Creating an answer without valid attributes fails" do
		click_button "Create Answer"
		page.should have_content("Answer has not been created.")
		page.should have_content("Description can't be blank")
	end
end
