class ActivitiesTags < ActiveRecord::Migration
  def up
    create_table 'activities_tags', :id => false do |t|
      t.column :activity_id, :integer
      t.column :tag_id, :integer
    end
  end


  def down
  end
end
