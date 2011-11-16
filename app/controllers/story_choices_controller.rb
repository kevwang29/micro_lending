class StoryChoicesController < ApplicationController
  # GET /story_choices
  # GET /story_choices.json
  def index
    @story_choices = StoryChoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @story_choices }
    end
  end

  # GET /story_choices/1
  # GET /story_choices/1.json
  def show
    @story_choice = StoryChoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @story_choice }
    end
  end

  # GET /story_choices/new
  # GET /story_choices/new.json
  def new
    @story_choice = StoryChoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story_choice }
    end
  end

  # GET /story_choices/1/edit
  def edit
    @story_choice = StoryChoice.find(params[:id])
  end

  # POST /story_choices
  # POST /story_choices.json
  def create
    @story_choice = StoryChoice.new(params[:story_choice])

    respond_to do |format|
      if @story_choice.save
        format.html { redirect_to @story_choice, notice: 'Story choice was successfully created.' }
        format.json { render json: @story_choice, status: :created, location: @story_choice }
      else
        format.html { render action: "new" }
        format.json { render json: @story_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /story_choices/1
  # PUT /story_choices/1.json
  def update
    @story_choice = StoryChoice.find(params[:id])

    respond_to do |format|
      if @story_choice.update_attributes(params[:story_choice])
        format.html { redirect_to @story_choice, notice: 'Story choice was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @story_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_choices/1
  # DELETE /story_choices/1.json
  def destroy
    @story_choice = StoryChoice.find(params[:id])
    @story_choice.destroy

    respond_to do |format|
      format.html { redirect_to story_choices_url }
      format.json { head :ok }
    end
  end
end
