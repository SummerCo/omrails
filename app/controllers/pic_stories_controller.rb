class PicStoriesController < ApplicationController
  # GET /pic_stories
  # GET /pic_stories.json
  def index
    @pic_stories = PicStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pic_stories }
    end
  end

  # GET /pic_stories/1
  # GET /pic_stories/1.json
  def show
    @pic_story = PicStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pic_story }
    end
  end

  # GET /pic_stories/new
  # GET /pic_stories/new.json
  def new
    @pic_story = PicStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pic_story }
    end
  end

  # GET /pic_stories/1/edit
  def edit
    @pic_story = PicStory.find(params[:id])
  end

  # POST /pic_stories
  # POST /pic_stories.json
  def create
    @pic_story = PicStory.new(params[:pic_story])

    respond_to do |format|
      if @pic_story.save
        format.html { redirect_to @pic_story, notice: 'Pic story was successfully created.' }
        format.json { render json: @pic_story, status: :created, location: @pic_story }
      else
        format.html { render action: "new" }
        format.json { render json: @pic_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pic_stories/1
  # PUT /pic_stories/1.json
  def update
    @pic_story = PicStory.find(params[:id])

    respond_to do |format|
      if @pic_story.update_attributes(params[:pic_story])
        format.html { redirect_to @pic_story, notice: 'Pic story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pic_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pic_stories/1
  # DELETE /pic_stories/1.json
  def destroy
    @pic_story = PicStory.find(params[:id])
    @pic_story.destroy

    respond_to do |format|
      format.html { redirect_to pic_stories_url }
      format.json { head :no_content }
    end
  end
end
