class StoryObject < ActiveRecord::Base
  has_many :decision_objects
  accepts_nested_attributes_for :decision_objects, :allow_destroy => true
end
