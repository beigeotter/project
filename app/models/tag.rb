class Tag < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :activities, :before_add => :validate_activity

  def validate_activity(activity)
  	raise ActiveRecord::Rollback if self.activities.include? activity
  end

end
