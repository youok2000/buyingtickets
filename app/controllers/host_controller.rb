class HostController < ApplicationController

  def host_form
  end

  def login_host_form
  end

  def create
    @host = Host.new(
      name: params[:name],
      password: params[:password]
    )
    if @host.save

      flash[:host] = "管理者を追加しました"
      session[:host_id] = @host.id
      redirect_to("/host_form")

    else

      flash[:false] = "もう一度入力してください"
      render("host/signup_host_form")

    end
  end

  def signup_host_form
  end

  def login_host

    @host = Host.find_by(
      name: params[:name],
      password: params[:password]
    )

    if @host
      flash[:ok] = "管理者としてログインしました"
      session[:host_id] = @host.id
      redirect_to("/host_form")

    else

      flash[:false] = "もう一度入力してください"
      render("host/login_host_form")

    end

  end

  def logout_host
    session[:host_id] = nil
    redirect_to("/")
  end
end
