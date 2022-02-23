class TicketController < ApplicationController

  def information
  end

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket  = Ticket.find_by(
      id: params[:id]
    )
  end

  def create
    @ticket_information = Ticket.new(
      name: params[:name],
      gender: params[:gender],
      phone_number: params[:phone_number],
      email: params[:email]
    )
    if @ticket_information.save

      flash[:notice]  = "チケットの購入が完了しました"
      redirect_to("/")

    else

      flash[:false]  = "もう一度入力してください"
      render('ticket/information')

    end
  end

  def login_form
  end

  def login
    @buyer = Ticket.find_by(
      name: params[:name],
      phone_number: params[:phone_number]
    )
    if @buyer
      flash[:notice] = "表示中"
      session[:buyer_id] = @buyer.id
      redirect_to("/")

    else

      flash[:false] = "もう一度入力してください"
      render("ticket/login_form")
  

    end

  end

  def logout
    session[:buyer_id] = nil
    redirect_to("/")
  end
  def destroy
    @ticket = Ticket.find_by(
      id: params[:id]
    )
    @ticket.destroy
    redirect_to("/index")
  end

end
