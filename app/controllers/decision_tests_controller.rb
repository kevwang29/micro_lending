class DecisionTestsController < ApplicationController
  # GET /decision_tests
  # GET /decision_tests.json
  def index
    @decision_tests = DecisionTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @decision_tests }
    end
  end

  # GET /decision_tests/1
  # GET /decision_tests/1.json
  def show
    @decision_test = DecisionTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @decision_test }
    end
  end

  # GET /decision_tests/new
  # GET /decision_tests/new.json
  def new
    @decision_test = DecisionTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @decision_test }
    end
  end

  # GET /decision_tests/1/edit
  def edit
    @decision_test = DecisionTest.find(params[:id])
  end

  # POST /decision_tests
  # POST /decision_tests.json
  def create
    @decision_test = DecisionTest.new(params[:decision_test])

    respond_to do |format|
      if @decision_test.save
        format.html { redirect_to @decision_test, notice: 'Decision test was successfully created.' }
        format.json { render json: @decision_test, status: :created, location: @decision_test }
      else
        format.html { render action: "new" }
        format.json { render json: @decision_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /decision_tests/1
  # PUT /decision_tests/1.json
  def update
    @decision_test = DecisionTest.find(params[:id])

    respond_to do |format|
      if @decision_test.update_attributes(params[:decision_test])
        format.html { redirect_to @decision_test, notice: 'Decision test was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @decision_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decision_tests/1
  # DELETE /decision_tests/1.json
  def destroy
    @decision_test = DecisionTest.find(params[:id])
    @decision_test.destroy

    respond_to do |format|
      format.html { redirect_to decision_tests_url }
      format.json { head :ok }
    end
  end
end
