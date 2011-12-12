class StoryObjectsController < ApplicationController
  # GET /story_objects
  # GET /story_objects.json
  def index
    @story_objects = StoryObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @story_objects.to_json(:include => [:decision_objects]) }
    end
  end

  # GET /story_objects/1
  # GET /story_objects/1.json
  def show
    @story_object = StoryObject.find(params[:id])
    @output = Array.new.push(@story_object);
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @output.to_json(:include => [:decision_objects]) }
    end
  end

  # GET /story_objects/new
  # GET /story_objects/new.json
  def new
    @story_object = StoryObject.new
    @story_object.decision_objects.build
    @story_object.decision_objects.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story_object }
    end
  end

  # GET /story_objects/1/edit
  def edit
    @story_object = StoryObject.find(params[:id])
    
  end

  # POST /story_objects
  # POST /story_objects.json
  def create
    @story_object = StoryObject.new(params[:story_object])

    respond_to do |format|
      if @story_object.save
        format.html { redirect_to @story_object, notice: 'Story object was successfully created.' }
        format.json { render json: @story_object, status: :created, location: @story_object }
      else
        format.html { render action: "new" }
        format.json { render json: @story_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /story_objects/1
  # PUT /story_objects/1.json
  def update
    @story_object = StoryObject.find(params[:id])

    respond_to do |format|
      if @story_object.update_attributes(params[:story_object])
        format.html { redirect_to @story_object, notice: 'Story object was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @story_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_objects/1
  # DELETE /story_objects/1.json
  def destroy
    @story_object = StoryObject.find(params[:id])
    @story_object.destroy

    respond_to do |format|
      format.html { redirect_to story_objects_url }
      format.json { head :ok }
    end
  end
end
