class PaymentController < ApplicationController
  def payment
    @transactions = Transaction.all
    
    @transactions.each{|trans|
      borrower = Borrower.find(:first, :conditions => [ "buid = ?", trans[:buid] ])
            
      trans[:borrower_tag]= borrower[:first_name] + "  " + borrower[:last_name] + " "+ trans[:amount].to_s; 

      
      }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transactions }
      
    end
  end

end
