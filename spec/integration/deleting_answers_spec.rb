require 'spec_helper'

feature "Deleting answers" do
	let!(:question) {Factory(:question)}
	let!(:answer) {Factory(:answer, :question => question)}

	before do
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

