class DecisionLogsController < ApplicationController
  # GET /decision_logs
  # GET /decision_logs.json
  def index
    @decision_logs = DecisionLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @decision_logs }
    end
  end

  # GET /decision_logs/1
  # GET /decision_logs/1.json
  def show
    @decision_log = DecisionLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @decision_log }
    end
  end

  # GET /decision_logs/new
  # GET /decision_logs/new.json
  def new
    @decision_log = DecisionLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @decision_log }
    end
  end

  # GET /decision_logs/1/edit
  def edit
    @decision_log = DecisionLog.find(params[:id])
  end

  # POST /decision_logs
  # POST /decision_logs.json
  def create
    @decision_log = DecisionLog.new(params[:decision_log])

    respond_to do |format|
      if @decision_log.save
        format.html { redirect_to @decision_log, notice: 'Decision log was successfully created.' }
        format.json { render json: @decision_log, status: :created, location: @decision_log }
      else
        format.html { render action: "new" }
        format.json { render json: @decision_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /decision_logs/1
  # PUT /decision_logs/1.json
  def update
    @decision_log = DecisionLog.find(params[:id])

    respond_to do |format|
      if @decision_log.update_attributes(params[:decision_log])
        format.html { redirect_to @decision_log, notice: 'Decision log was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @decision_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decision_logs/1
  # DELETE /decision_logs/1.json
  def destroy
    @decision_log = DecisionLog.find(params[:id])
    @decision_log.destroy

    respond_to do |format|
      format.html { redirect_to decision_logs_url }
      format.json { head :ok }
    end
  end
  
  def getCurrentDecision
    @latest_decision = DecisionLog.find(:first, :conditions => ["luid = ?", params[:luid]], :order => 'created_at DESC')
    @output = Array.new.push(@latest_decision)
    respond_to do |format|
      format.json { render json: @output }
    end
  end
  
  def getAllDecisions
    @decisions = DecisionLog.find(:all, :conditions => ["luid = ?", params[:luid]], :order => 'created_at ASC')
    respond_to do |format|
      format.json { render json: @decisions } 
    end 
  end
end
