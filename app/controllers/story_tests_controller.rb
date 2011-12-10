class StoryTestsController < ApplicationController
  # GET /story_tests
  # GET /story_tests.json
  def index
    @story_tests = StoryTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @story_tests.to_json(:include => [:decision_tests]) }
    end
  end

  # GET /story_tests/1
  # GET /story_tests/1.json
  def show
    @story_test = StoryTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @story_test }
    end
  end

  # GET /story_tests/new
  # GET /story_tests/new.json
  def new
    @story_test = StoryTest.new
    @story_test.decision_tests.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story_test }
    end
  end

  # GET /story_tests/1/edit
  def edit
    @story_test = StoryTest.find(params[:id])
  end

  # POST /story_tests
  # POST /story_tests.json
  def create
    @story_test = StoryTest.new(params[:story_test])

    respond_to do |format|
      if @story_test.save
        format.html { redirect_to @story_test, notice: 'Story test was successfully created.' }
        format.json { render json: @story_test, status: :created, location: @story_test }
      else
        format.html { render action: "new" }
        format.json { render json: @story_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /story_tests/1
  # PUT /story_tests/1.json
  def update
    @story_test = StoryTest.find(params[:id])

    respond_to do |format|
      if @story_test.update_attributes(params[:story_test])
        format.html { redirect_to @story_test, notice: 'Story test was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @story_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_tests/1
  # DELETE /story_tests/1.json
  def destroy
    @story_test = StoryTest.find(params[:id])
    @story_test.destroy

    respond_to do |format|
      format.html { redirect_to story_tests_url }
      format.json { head :ok }
    end
  end
end
