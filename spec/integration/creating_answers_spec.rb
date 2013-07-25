require 'spec_helper'
feature "Creating Answers" do
	before do
		Factory(:question, :name => "Sample Question")
		user = Factory(:user, :email => "too_many_questions@example.com")
		user.confirm!

		visit '/'
		click_link "Sample Question"
		click_link "New Answer"
		message = "You need to sign in or sign up before continuing."
		page.should have_content(message)

		fill_in "Email", :with => "too_many_questions@example.com"
		fill_in "Password", :with => "password"
		click_button "Sign in"
		within("h2") {page.should have_content("New Answer")}
	end
	scenario "Creating an answer" do
		fill_in "Description", :with => "Sample Answer"
		click_button "Create Answer"
		page.should have_content("Answer has been created.")
		within("#answer #authors") do
			page.should have_content("too_many_questions@example.com")
		end
	end
	scenario "Creating an answer without valid attributes fails" do
		click_button "Create Answer"
		page.should have_content("Answer has not been created.")
		page.should have_content("Description can't be blank")
	end
end
