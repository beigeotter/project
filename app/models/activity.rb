class Activity < ActiveRecord::Base
  attr_accessible :description, :add_tags
  attr_accessor :add_tags

  has_and_belongs_to_many :tags, :before_add => :validate_tag

  def validate_tag(tag)
  	raise ActiveRecord::Rollback if self.tags.include? tag
  end

end
