class UserDecisionsController < ApplicationController
  # GET /user_decisions
  # GET /user_decisions.json
  def index
    @user_decisions = UserDecision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_decisions }
    end
  end

  # GET /user_decisions/1
  # GET /user_decisions/1.json
  def show
    @user_decision = UserDecision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_decision }
    end
  end

  # GET /user_decisions/new
  # GET /user_decisions/new.json
  def new
    @user_decision = UserDecision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_decision }
    end
  end

  # GET /user_decisions/1/edit
  def edit
    @user_decision = UserDecision.find(params[:id])
  end

  # POST /user_decisions
  # POST /user_decisions.json
  def create
    @user_decision = UserDecision.new(params[:user_decision])

    respond_to do |format|
      if @user_decision.save
        format.html { redirect_to @user_decision, notice: 'User decision was successfully created.' }
        format.json { render json: @user_decision, status: :created, location: @user_decision }
      else
        format.html { render action: "new" }
        format.json { render json: @user_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_decisions/1
  # PUT /user_decisions/1.json
  def update
    @user_decision = UserDecision.find(params[:id])

    respond_to do |format|
      if @user_decision.update_attributes(params[:user_decision])
        format.html { redirect_to @user_decision, notice: 'User decision was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_decisions/1
  # DELETE /user_decisions/1.json
  def destroy
    @user_decision = UserDecision.find(params[:id])
    @user_decision.destroy

    respond_to do |format|
      format.html { redirect_to user_decisions_url }
      format.json { head :ok }
    end
  end


end
