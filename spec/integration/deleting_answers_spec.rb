require 'spec_helper'

feature "Deleting answers" do
	let!(:question) {Factory(:question)}
	let!(:user) {Factory(:confirmed_user)}
	let!(:answer) do
		answer = Factory(:answer, :question => question)
		answer.update_attribute(:users, [user])
		answer
	end

	before do
		sign_in_as!(user)
		visit '/'
		click_link question.name
		click_link answer.description
	end

	scenario "Deleting an answer" do
		click_link "Delete Answer"
		page.should have_content("Answer has been deleted.")
		page.current_url.should == question_url(question)
	end
end

