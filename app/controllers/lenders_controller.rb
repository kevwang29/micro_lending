class LendersController < ApplicationController
  # GET /lenders
  # GET /lenders.json
  def index
    @lenders = Lender.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lenders }
    end
  end

  # GET /lenders/1
  # GET /lenders/1.json
  def show
    @lender = Lender.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lender }
    end
  end
  
  
  # GET /lenders/new
  # GET /lenders/new.json
  def new
    @lender = Lender.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lender }
    end
  end

  # GET /lenders/1/edit
  def edit
    @lender = Lender.find(params[:id])
  end

  # POST /lenders
  # POST /lenders.json
  def create
    @lender = Lender.new(params[:lender])

    respond_to do |format|
      if @lender.save
        format.html { redirect_to @lender, notice: 'Lender was successfully created.' }
        format.json { render json: @lender, status: :created, location: @lender }
      else
        format.html { render action: "new" }
        format.json { render json: @lender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lenders/1
  # PUT /lenders/1.json
  def update
    @lender = Lender.find(params[:id])

    respond_to do |format|
      if @lender.update_attributes(params[:lender])
        format.html { redirect_to @lender, notice: 'Lender was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lenders/1
  # DELETE /lenders/1.json
  def destroy
    @lender = Lender.find(params[:id])
    @lender.destroy

    respond_to do |format|
      format.html { redirect_to lenders_url }
      format.json { head :ok }
    end
  end
  
  #allow retrieval of all borrowers that a particular lender lent to
  def getBorrowersByUid
    @lender = Lender.find(:all, :conditions => [ "luid = ?" , params[:uid]])
    @transaction = Transaction.find(:all, :conditions =>[ "luid = ?" , params[:uid]])
    @transaction_buid_set = Set.new;
    @borrower_list = Array.new
    @transaction.each{|transacs| 
      @transaction_buid_set.add(transacs[:buid])
     };
     
    @transaction_buid_set.each{|transacs_buid|
      borrower = Borrower.find(:first, :conditions =>[ "buid = ?" , transacs_buid]);
        borrower[:current_amount] = 0;
        @tran = Transaction.find(:all, :conditions => ["buid = ?" , borrower[:buid]]);
        if(@tran != nil)
          @tran.each{|tr|
            borrower[:current_amount]=borrower[:current_amount]+tr[:amount]
          }
        end
        @borrower_list.push(borrower);
      };  
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @borrower_list }
    end
  end
  
  #allow retrieval of the lender information by its luid
  def byUid
    @lender = Lender.find(:all, :conditions => [ "luid = ?" , params[:uid]])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lender }
    end
  end
end
