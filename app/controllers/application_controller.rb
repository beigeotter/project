class ApplicationController < ActionController::Base
  protect_from_forgery
  def create_tag
      @tag = Tag.new(params[:name])

      respond_to do |format|
        if @tag.save
          format.html { redirect_to @tag, notice: 'Tag was successfully created.' }
          format.json { render json: @tag, status: :created, location: @tag }
        else
          format.html { render action: "new" } #FIX THIS LINE!!!
          format.json { render json: @tag.errors, status: :unprocessable_entity }
        end
      end
    end

  def show_tag
    @tag = Tag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tag }
    end
  end

  def create_activity
      @activity = Activity.new(params[:activity_id])

      respond_to do |format|
        if @activity.save
          format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
          format.json { render json: @activity, status: :created, location: @activity }
        else
          format.html { render action: "new" } #FIX THIS LINE!!!
          format.json { render json: @activity.errors, status: :unprocessable_entity }
        end
      end
    end

  def show_activity
    @activity = Activity.find(params[:activity_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @activity }
    end
  end

