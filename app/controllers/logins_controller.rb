class LoginsController < ApplicationController
  def index
    if user_signed_in?
      redirect_to(controller: :contact_books, action: 'index', id: current_user.id)
    end
  end

  def create_new
    id = params[:name]
    redirect_to(action: 'create', id: id)
  end

  def create
  end

  def read
    id = params[:name]
  end
end
