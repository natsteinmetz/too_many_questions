class Answer < ActiveRecord::Base
  belongs_to :question
	has_and_belongs_to_many :users

	attr_accessible :date, :description

	validates :description, :presence => true
end
