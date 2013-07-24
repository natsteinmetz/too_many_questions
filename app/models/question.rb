class Question < ActiveRecord::Base
  attr_accessible :date, :name, :topic

	validates :name, :presence => true
	validates :topic, :presence => true
end
