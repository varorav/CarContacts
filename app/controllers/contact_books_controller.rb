class ContactBooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @name = current_user.email
    @contactbook = current_user.contact_book || ContactBook.create_for_user(current_user)
    @temp = []
  end
end
