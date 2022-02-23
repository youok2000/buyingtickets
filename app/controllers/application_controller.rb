class ApplicationController < ActionController::Base
  before_action :login_ticket
  #before_action :doing_host

  def login_ticket
    @login_ticket = Ticket.find_by(
      id: session[:buyer_id]
    )
  end
  
  #def doing_host
    #@doing_host = Ticket.find_by(
      #  id: session[:host_id]
    #  )
  #  end

end
