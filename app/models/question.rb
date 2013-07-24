class Question < ActiveRecord::Base
	has_many :answers

	attr_accessible :date, :name, :topic

	validates :name, :presence => true
	validates :topic, :presence => true
end
