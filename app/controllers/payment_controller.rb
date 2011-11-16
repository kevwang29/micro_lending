class PaymentController < ApplicationController
  
  
  def payment
    @transactions = Transaction.find(:all, :conditions => [ "luid = ?", params[:luid]]);
=begin    
    @transactions.each{|trans|
      borrower = Borrower.find(:first, :conditions => [ "buid = ?", trans[:buid] ])
            
      trans[:borrower_tag]= borrower[:first_name] + "  " + borrower[:last_name] + " "+ trans[:amount].to_s; 

      
      }
=end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transactions }
      
    end
  end
  
  def delete
    
  end

end
