class ContactBooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @name = current_user.email
    @contactbook = [['First1 Last1', 'Nothing'], ['First2 Last2', 'No Car']]
  end
end
