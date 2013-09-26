class Survey < ActiveRecord::Base
  has_many :questions
  accepts_nested_attributes_for :questions, allow_destroy: true
  attr_accessible :title, :questions_attributes
end
