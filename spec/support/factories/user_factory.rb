FactoryGirl.define do
	factory :user do
		sequence(:email) {|n| "user#{n}@too_many_questions.com"}
		password "password"
		password_confirmation "password"
	end
end

