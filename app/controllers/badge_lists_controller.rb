class BadgeListsController < ApplicationController
  # GET /badge_lists
  # GET /badge_lists.json
  def index
    @badge_lists = BadgeList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @badge_lists }
    end
  end

  # GET /badge_lists/1
  # GET /badge_lists/1.json
  def show
    @badge_list = BadgeList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @badge_list }
    end
  end

  # GET /badge_lists/new
  # GET /badge_lists/new.json
  def new
    @badge_list = BadgeList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @badge_list }
    end
  end

  def byUid
    @badge_list = BadgeList.find(:all, :conditions => [ "LUID = ?" , params[:uid]])
    @badges = Array.new
    @badge_list.each{|badge| @badges.push(Badge.find(:first, :conditions =>["BID = ?", badge[:BUID]]))}
  
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @badges }
    end
  end

  # GET /badge_lists/1/edit
  def edit
    @badge_list = BadgeList.find(params[:id])
  end

  # POST /badge_lists
  # POST /badge_lists.json
  def create
    @badge_list = BadgeList.new(params[:badge_list])

    respond_to do |format|
      if @badge_list.save
        format.html { redirect_to @badge_list, notice: 'Badge list was successfully created.' }
        format.json { render json: @badge_list, status: :created, location: @badge_list }
      else
        format.html { render action: "new" }
        format.json { render json: @badge_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /badge_lists/1
  # PUT /badge_lists/1.json
  def update
    @badge_list = BadgeList.find(params[:id])

    respond_to do |format|
      if @badge_list.update_attributes(params[:badge_list])
        format.html { redirect_to @badge_list, notice: 'Badge list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @badge_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /badge_lists/1
  # DELETE /badge_lists/1.json
  def destroy
    @badge_list = BadgeList.find(params[:id])
    @badge_list.destroy

    respond_to do |format|
      format.html { redirect_to badge_lists_url }
      format.json { head :ok }
    end
  end
end
