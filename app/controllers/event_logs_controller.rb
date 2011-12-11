class EventLogsController < ApplicationController
  # GET /event_logs
  # GET /event_logs.json
  def index
    @event_logs = EventLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_logs }
    end
  end

  # GET /event_logs/1
  # GET /event_logs/1.json
  def show
    @event_log = EventLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_log }
    end
  end

  # GET /event_logs/new
  # GET /event_logs/new.json
  def new
    @event_log = EventLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_log }
    end
  end

  # GET /event_logs/1/edit
  def edit
    @event_log = EventLog.find(params[:id])
  end

  # POST /event_logs
  # POST /event_logs.json
  def create
    @event_log = EventLog.new(params[:event_log])

    respond_to do |format|
      if @event_log.save
        format.html { redirect_to @event_log, notice: 'Event log was successfully created.' }
        format.json { render json: @event_log, status: :created, location: @event_log }
      else
        format.html { render action: "new" }
        format.json { render json: @event_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_logs/1
  # PUT /event_logs/1.json
  def update
    @event_log = EventLog.find(params[:id])

    respond_to do |format|
      if @event_log.update_attributes(params[:event_log])
        format.html { redirect_to @event_log, notice: 'Event log was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_logs/1
  # DELETE /event_logs/1.json
  def destroy
    @event_log = EventLog.find(params[:id])
    @event_log.destroy

    respond_to do |format|
      format.html { redirect_to event_logs_url }
      format.json { head :ok }
    end
  end
  
  #allow retrieval of all events by luid
  def getEventsById
    @event_log = EventLog.find(:all, :conditions => ["luid = ?", params[:luid]], :order =>'created_at ASC')
    
    respond_to do |format|
      format.json {render json: @event_log}
    end
  end
end
