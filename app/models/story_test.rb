class StoryTest < ActiveRecord::Base
  has_many :decision_tests
  accepts_nested_attributes_for :decision_tests, :allow_destroy => true

end
