class Answer < ActiveRecord::Base
  belongs_to :question
	belongs_to :user

	attr_accessible :date, :description

	validates :description, :presence => true
end
