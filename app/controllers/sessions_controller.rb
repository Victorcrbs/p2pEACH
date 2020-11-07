class SessionsController < ApplicationController
  def new
  end
  def create
    usuario = Usuario.find_by_email(params[:email])
    if usuario && usuario.authenticate(params[:password])
      session[:usuario_id] = usuario.id
      redirect_to root_url
    else
      flash.now[:alert] = "Email ou senha é inválida."
      render "new"
    end
  end
  def destroy
    session[:usuario_id] = nil
    redirect_to root_url
  end
end