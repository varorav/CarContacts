class LoginsController < ApplicationController
  def index
  end

  def create_new
    id = params[:name]
    redirect_to(action: 'create', id: id)
  end

  def create
  end

  def read
    id = params[:name]
    redirect_to(controller: :contact_books, action: 'index', id: id)
  end
end
