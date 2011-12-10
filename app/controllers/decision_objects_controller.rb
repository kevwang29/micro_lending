class DecisionObjectsController < ApplicationController
  # GET /decision_objects
  # GET /decision_objects.json
  def index
    @decision_objects = DecisionObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @decision_objects }
    end
  end

  # GET /decision_objects/1
  # GET /decision_objects/1.json
  def show
    @decision_object = DecisionObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @decision_object }
    end
  end

  # GET /decision_objects/new
  # GET /decision_objects/new.json
  def new
    @decision_object = DecisionObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @decision_object }
    end
  end

  # GET /decision_objects/1/edit
  def edit
    @decision_object = DecisionObject.find(params[:id])
  end

  # POST /decision_objects
  # POST /decision_objects.json
  def create
    @decision_object = DecisionObject.new(params[:decision_object])

    respond_to do |format|
      if @decision_object.save
        format.html { redirect_to @decision_object, notice: 'Decision object was successfully created.' }
        format.json { render json: @decision_object, status: :created, location: @decision_object }
      else
        format.html { render action: "new" }
        format.json { render json: @decision_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /decision_objects/1
  # PUT /decision_objects/1.json
  def update
    @decision_object = DecisionObject.find(params[:id])

    respond_to do |format|
      if @decision_object.update_attributes(params[:decision_object])
        format.html { redirect_to @decision_object, notice: 'Decision object was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @decision_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decision_objects/1
  # DELETE /decision_objects/1.json
  def destroy
    @decision_object = DecisionObject.find(params[:id])
    @decision_object.destroy

    respond_to do |format|
      format.html { redirect_to decision_objects_url }
      format.json { head :ok }
    end
  end
end
