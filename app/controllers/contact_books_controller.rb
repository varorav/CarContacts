class ContactBooksController < ApplicationController
  def index
    @name = params[:id]
    @contactbook = [['First1 Last1', 'Nothing'], ['First2 Last2', 'No Car']]
  end
end
