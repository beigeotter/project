class ActivitiesController < ApplicationController
  def new

    @activity = Activity.new

  end

  def create
    @activity = Activity.new(params[:activity])
    our_tags = params[:activity][:add_tags].split(',')
    tags_array = Array.new

    our_tags.each do |string_tag|
      if Tag.find_by_name(string_tag).present?
      	my_tag_object = Tag.find_by_name(string_tag)
      	tags_array.push(my_tag_object)
      else
      	my_tag = Tag.new()
      	my_tag.name = string_tag
      	my_tag.save
      	tags_array.push(my_tag)
      end
    end

    @activity.tags << tags_array

    @activity.save

    #redirect_to root_path
    render 'thanks'

  end

end
