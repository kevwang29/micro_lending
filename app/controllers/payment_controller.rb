class PaymentController < ApplicationController
  def payment
    @transactions = Transaction.all
    @transaction_info = Array.new
    
    @transactions.each{|trans|
      x=Hash.new[trans]
      borrower = Borrower.find(:first, :conditions => [ "buid = ?", x[:buid] ])
      
      x[:borrower_tag]= borrower[:first_name] + "  " + borrower[:last_name] + " "+ borrower[:amount]; 
      
      @transaction_info.push(x)
      
      }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transactions }
      
    end
  end

end
