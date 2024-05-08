class LoginsController < ApplicationController
  def index
    if user_signed_in?
      redirect_to(controller: :contact_books, action: 'index', id: current_user.id)
    end
  end
end
