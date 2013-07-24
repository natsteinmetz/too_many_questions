class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :date, :description

	validates :description, :presence => true
end
