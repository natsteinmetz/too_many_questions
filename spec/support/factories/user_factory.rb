FactoryGirl.define do
	factory :user do
		sequence(:email) {|n| "user#{n}@too_many_questions.com"}
		password "password"
		password_confirmation "password"
	
		factory :confirmed_user do
			after_create do |user|
				user.confirm!
			end
		end
	end
end

