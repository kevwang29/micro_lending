class PaymentController < ApplicationController
  
  
  def payment
    @transactions = Transaction.find(:all, :conditions => [ "luid = ?", params[:luid]]);

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transactions }
      
    end
  end
  
  def delete
    
  end

end
